---
tc_id: TC-AUTH-005
title: Send OTP - Rate Limit / Cooldown
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| phone_code | "966" |
| phone | "501000017" |
| user_type_id | "4" |
| type | "register" |

# Preconditions
- User has already successfully sent OTP within the last 30 seconds

# Steps
1. Send POST request to `/api/otp/send` with same phone parameters
2. Observe response status and body

# Expected Result
- HTTP Status Code: 429
- Response body `success: false`
- Error message: rate limit or cooldown message
- `verification_token` NOT changed or updated
- Client shows inline: "Please wait before sending another OTP"

# Notes
- Backend maintains unexpired request cooldown per phone number
- 30-second default cooldown from initial send attempt

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""
TC-AUTH-005: Send OTP - Advanced Stress & Rate Limit / Cooldown Verification
Endpoint: POST /api/otp/send
"""

import os
import sys
import json
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass, field
from typing import Dict, List, Optional
import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/otp/send"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "application/json",
}

_TOKEN = os.environ.get("AZHALA_BEARER_TOKEN")
if _TOKEN:
    HEADERS["Authorization"] = f"Bearer {_TOKEN}"

PAYLOAD = {
    "phone_code": "966",
    "phone": "501000030",
    "type": "register",
    "user_type_id": "4",
}

# Configuration for stress thresholds
BURST_CONCURRENCY = 25       # Simultaneous threads in the burst race
SUSTAINED_REQUESTS = 40      # Rapid sequential requests
TIMEOUT = 15                 # Timeout in seconds per request


@dataclass
class TestMetrics:
    status_codes: Dict[int, int] = field(default_factory=dict)
    latencies: List[float] = field(default_factory=list)
    leaked_tokens: List[str] = field(default_factory=list)
    errors: List[str] = field(default_factory=list)

    def record(self, status: int, latency: float, token: Optional[str] = None):
        self.status_codes[status] = self.status_codes.get(status, 0) + 1
        self.latencies.append(latency)
        if token:
            self.leaked_tokens.append(token)


def safe_json_parse(res: requests.Response) -> dict:
    try:
        return res.json()
    except Exception:
        return {}


def send_otp_request(session: requests.Session, custom_headers: dict = None) -> tuple[int, float, dict]:
    req_headers = {**HEADERS, **(custom_headers or {})}
    start_time = time.perf_counter()
    try:
        r = session.post(ENDPOINT, headers=req_headers, data=PAYLOAD, timeout=TIMEOUT)
        latency = (time.perf_counter() - start_time) * 1000
        return r.status_code, latency, safe_json_parse(r)
    except Exception as e:
        latency = (time.perf_counter() - start_time) * 1000
        return 0, latency, {"error": str(e)}


def main() -> int:
    session = requests.Session()
    metrics = TestMetrics()
    
    print("=" * 65)
    print("STARTING HEAVY STRESS & RATE LIMIT VERIFICATION")
    print(f"Target: {ENDPOINT}")
    print(f"Target Identifier: +{PAYLOAD['phone_code']}{PAYLOAD['phone']}")
    print("=" * 65)

    # ---------------------------------------------------------
    # STAGE 0: SEED / ARM THE COOLDOWN WINDOW
    # ---------------------------------------------------------
    print("\n[STAGE 0] Seeding initial request to arm cooldown window...")
    status, latency, body = send_otp_request(session)
    metrics.record(status, latency)
    
    initial_token = (body.get("data") or {}).get("verification_token")
    print(f"  -> HTTP {status} ({latency:.1f}ms) | Seed Token: {initial_token or 'None'}")

    # ---------------------------------------------------------
    # STAGE 1: CONCURRENT BURST ATTACK (Race Condition Test)
    # ---------------------------------------------------------
    print(f"\n[STAGE 1] Launching concurrent burst ({BURST_CONCURRENCY} parallel workers)...")
    
    with ThreadPoolExecutor(max_workers=BURST_CONCURRENCY) as executor:
        futures = [executor.submit(send_otp_request, session) for _ in range(BURST_CONCURRENCY)]
        for future in as_completed(futures):
            status, lat, res_body = future.result()
            token = (res_body.get("data") or {}).get("verification_token")
            metrics.record(status, lat, token if (status == 200 and token != initial_token) else None)

    print(f"  -> Burst complete. Breakdown: {metrics.status_codes}")

    # ---------------------------------------------------------
    # STAGE 2: SUSTAINED RAPID SEQUENTIAL FLOODING
    # ---------------------------------------------------------
    print(f"\n[STAGE 2] Executing {SUSTAINED_REQUESTS} rapid sequential requests...")
    for i in range(SUSTAINED_REQUESTS):
        status, lat, res_body = send_otp_request(session)
        token = (res_body.get("data") or {}).get("verification_token")
        metrics.record(status, lat, token if (status == 200 and token != initial_token) else None)

    # ---------------------------------------------------------
    # STAGE 3: IP SPOOFING BYPASS PROBE (Header Mutation)
    # ---------------------------------------------------------
    print("\n[STAGE 3] Testing Rate Limiter keying against IP header mutations...")
    spoofed_headers = {
        "X-Forwarded-For": "203.0.113.195",
        "X-Real-IP": "203.0.113.195",
        "CF-Connecting-IP": "203.0.113.195",
    }
    status, lat, res_body = send_otp_request(session, custom_headers=spoofed_headers)
    metrics.record(status, lat)
    print(f"  -> Spoofed Header Request Status: HTTP {status} ({lat:.1f}ms)")

    # ---------------------------------------------------------
    # SUMMARY & CONTRACT VALIDATION
    # ---------------------------------------------------------
    total_requests = sum(metrics.status_codes.values())
    rate_limited_count = metrics.status_codes.get(429, 0)
    success_count = metrics.status_codes.get(200, 0)
    avg_latency = sum(metrics.latencies) / len(metrics.latencies) if metrics.latencies else 0

    print("\n" + "=" * 65)
    print("METRICS & EVALUATION")
    print("=" * 65)
    print(f"Total Requests Executed : {total_requests}")
    print(f"HTTP 429 Rate-Limited   : {rate_limited_count}")
    print(f"HTTP 200 Successes      : {success_count}")
    print(f"Other Statuses          : {[f'{k}: {v}' for k, v in metrics.status_codes.items() if k not in (200, 429)]}")
    print(f"Average Latency         : {avg_latency:.2f} ms")
    print(f"Max Latency             : {max(metrics.latencies):.2f} ms")
    print(f"Min Latency             : {min(metrics.latencies):.2f} ms")
    print("-" * 65)

    test_failed = False

    # Contract Rule 1: No rogue token rotations during active cooldown
    if metrics.leaked_tokens:
        print(f"[CRITICAL FAIL] Rotated verification tokens issued during cooldown: {metrics.leaked_tokens}")
        test_failed = True

    # Contract Rule 2: At least 90% of requests after seed must be blocked with 429
    non_seed_requests = total_requests - 1
    if non_seed_requests > 0:
        rate_limit_ratio = (rate_limited_count / non_seed_requests) * 100
        print(f"Cooldown Enforcement Rate: {rate_limit_ratio:.2f}%")
        if rate_limit_ratio < 90.0:
            print(f"[FAIL] Rate limiter compliance below acceptable threshold (Expected >= 90%, got {rate_limit_ratio:.2f}%)")
            test_failed = True

    # Contract Rule 3: IP spoof must not bypass phone-level cooldown
    if status != 429:
        print(f"[FAIL] IP spoofed request bypassed phone cooldown (Got HTTP {status}, expected 429)")
        test_failed = True

    if not test_failed:
        print("\n[PASS] TC-AUTH-005 Heavy Rate Limit & Concurrency Test Completed Successfully.")
        return 0
    else:
        print("\n[FAIL] TC-AUTH-005 Failed rate limiting contract under stress.")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
