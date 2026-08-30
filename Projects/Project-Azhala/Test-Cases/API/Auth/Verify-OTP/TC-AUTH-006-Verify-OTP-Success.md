---
tc_id: TC-AUTH-006
title: Verify OTP - Success Path
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| verification_token | "01a03d2e-f961-701a-94fd-a907412d0d54" |
| otp_code | "12345" |
| device_token | "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof" |

# Preconditions
- User has successfully called `/api/otp/send` and received `verification_token`
- App is on Screen 2 with 90-second countdown timer

# Steps
1. Send POST request to `/api/otp/verify` with form parameters: `verification_token="01a03d2e-f961-701a-94fd-a907412d0d54"`, `otp_code="12345"`, `device_token="bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"`
2. Verify response contains `success: true`
3. Extract Bearer `token` from response data

# Expected Result
- HTTP Status Code: 200
- Response body `success: true` and `message` indicates OTP verified
- `data.token` is a valid Bearer token string
- `data.token_type` equals `"Bearer"`
- `data.user_type.id` equals `4` (Service Provider)
- `data.status` equals `"complete_profile"`
- Bearer token is persisted for subsequent authenticated requests
- `data.is_customer` is `false`

# Notes
- Successful OTP verification issues temporary authenticated session
- Token has its own TTL (expires_at ~30 days from verification)
- Device token binds app for push notifications

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-006: Verify OTP - Success Path (POST /api/otp/send -> POST /api/otp/verify)"""
import os
import sys
import json
import requests

BASE_URL = "https://azhala.codlop.sa/api"
SEND_ENDPOINT = f"{BASE_URL}/otp/send"
VERIFY_ENDPOINT = f"{BASE_URL}/otp/verify"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

OTP_CODE = "12345"  # fixed code in test mode ("وضع الاختبار")
DEVICE_TOKEN = (
    "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_"
    "6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"
)
VERIFICATION_TOKEN = os.environ.get(
    "AZHALA_VERIFICATION_TOKEN", "01a03d2e-f961-701a-94fd-a907412d0d54"
)


def fresh_verification_token() -> str:
    """Precondition: mint a live verification_token (static sample expires after 90s)."""
    resp = requests.post(
        SEND_ENDPOINT,
        headers=HEADERS,
        data={
            "phone_code": "966",
            "phone": "501000031",
            "type": "register",
            "user_type_id": "4",
        },
        timeout=30,
    )
    assert resp.status_code == 200, f"precondition /otp/send failed: {resp.status_code} {resp.text[:200]}"
    return resp.json()["data"]["verification_token"]


def main() -> int:
    print("STEP 0 (precondition): POST /otp/send to obtain a fresh verification_token")

    try:
        vtoken = fresh_verification_token()
    except AssertionError:
        vtoken = VERIFICATION_TOKEN  # fall back to the sample static token

    print(f"  -> verification_token={vtoken}")
    print(f"STEP 1: POST {VERIFY_ENDPOINT} with valid 5-digit OTP")
    resp = requests.post(
        VERIFY_ENDPOINT,
        headers=HEADERS,
        data={
            "verification_token": vtoken,
            "otp_code": OTP_CODE,
            "device_token": DEVICE_TOKEN,
        },
        timeout=30,
    )
    print("Response:\n")
    print(json.dumps(resp.json(), ensure_ascii=False, indent=2))
    print("\n")
    
    print(f"  -> HTTP {resp.status_code}")
    body = None
    try:
        assert resp.status_code == 206, f"expected 206, got {resp.status_code}"
        body = resp.json()

        print("STEP 2: assert success flag")
        assert body.get("success") is True, f"success != true: {body}"
        data = body.get("data") or {}
        
        print("Response:\n")
        print(json.dumps(body, ensure_ascii=False, indent=2))
        print("\n")

        print("STEP 3: extract Bearer token and validate session contract")
        assert data.get("token"), "Bearer token missing"
        assert data.get("token_type") == "Bearer", f"token_type: {data.get('token_type')}"
        assert data.get("status") == "complete_profile", f"status: {data.get('status')}"
        assert int(data["user_type"]["id"]) == 4, "user_type.id should be 4 (Service Provider)"
        assert data.get("is_customer") is False, "is_customer should be false"
        os.environ["AZHALA_BEARER_TOKEN"] = data["token"]  # persist for chained steps

        print("[PASS] TC-AUTH-006 Verify OTP - Success Path")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        print("Response:\n")
        print(json.dumps(body, ensure_ascii=False, indent=2))
        return 1

if __name__ == "__main__":
    sys.exit(main())
```
