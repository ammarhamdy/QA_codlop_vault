---
tc_id: TC-AUTH-007
title: Verify OTP - Invalid Code
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
| otp_code | "99999" |
| device_token | "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof" |

# Preconditions
- User has successfully called `/api/otp/send` and received `verification_token`

# Steps
1. Send POST request to `/api/otp/verify` with invalid OTP: `otp_code="99999"`
2. Observe response status and body

# Expected Result
- HTTP Status Code: 400 or 422
- Response body `success: false`
- Error message: "Invalid OTP code" or similar
- `data.token` is NOT issued
- `data.status` is not updated
- UI clears OTP input field
- Remaining timer countdown is retained

# Notes
- Invalid OTP does not advance user state
- Timer continues from where it left off
- Input fields are cleared for re-entry

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-007: Verify OTP - Invalid Code (POST /api/otp/send -> POST /api/otp/verify)"""
import os
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
SEND_ENDPOINT = f"{BASE_URL}/otp/send"
VERIFY_ENDPOINT = f"{BASE_URL}/otp/verify"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

DEVICE_TOKEN = (
    "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_"
    "6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"
)


def main() -> int:
    print("STEP 0 (precondition): POST /otp/send to obtain a fresh verification_token")
    r1 = requests.post(
        SEND_ENDPOINT,
        headers=HEADERS,
        data={
            "phone_code": "966",
            "phone": "501000032",
            "type": "register",
            "user_type_id": "4",
        },
        timeout=30,
    )
    print(f"  -> HTTP {r1.status_code}")
    try:
        assert r1.status_code == 200, f"precondition send failed: {r1.status_code}"
        vtoken = r1.json()["data"]["verification_token"]

        print(f"STEP 1: POST {VERIFY_ENDPOINT} with invalid otp_code='99999'")
        resp = requests.post(
            VERIFY_ENDPOINT,
            headers=HEADERS,
            data={
                "verification_token": vtoken,
                "otp_code": "99999",
                "device_token": DEVICE_TOKEN,
            },
            timeout=30,
        )
        print(f"  -> HTTP {resp.status_code}")

        print("STEP 2: assert rejection and no token issuance")
        assert resp.status_code in (400, 422), f"expected 400/422, got {resp.status_code}"
        body = resp.json()
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("token"), "Bearer token must NOT be issued for an invalid OTP"

        print("[PASS] TC-AUTH-007 Verify OTP - Invalid Code")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500] if 'resp' in dir() else r1.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
