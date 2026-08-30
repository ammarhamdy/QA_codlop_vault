---
tc_id: TC-AUTH-008
title: Verify OTP - Expired Verification Token
priority:
  - Medium
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

# Preconditions
- User has `verification_token` that has passed its `expires_at` timestamp
- Token was issued more than 90 seconds ago

# Steps
1. Send POST request to `/api/otp/verify` with expired `verification_token` and valid `otp_code="12345"`
2. Observe response status and body

# Expected Result
- HTTP Status Code: 401 or 422
- Response body `success: false`
- Error message: "Verification token has expired" or similar
- No `data.token` issued
- Client resets to Screen 1 (role selection)
- Timer resets to initial state

# Notes
- Token expiration is based on `expires_at` from `/api/otp/send` response
- After expiration, user must restart OTP flow from beginning

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-008: Verify OTP - Expired Verification Token (POST /api/otp/verify)"""
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
VERIFY_ENDPOINT = f"{BASE_URL}/otp/verify"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

# Sample token from Scripts/Service-Provider/Auth/POST-otp-verify.md; past its expires_at.
EXPIRED_TOKEN = "01a03d2e-f961-701a-94fd-a907412d0d54"


def main() -> int:
    print(f"STEP 1: POST {VERIFY_ENDPOINT} with expired verification_token")
    resp = requests.post(
        VERIFY_ENDPOINT,
        headers=HEADERS,
        data={"verification_token": EXPIRED_TOKEN, "otp_code": "12345"},
        timeout=30,
    )
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code in (401, 422), f"expected 401/422, got {resp.status_code}"
        body = resp.json()

        print("STEP 2: assert rejection and no session issued")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("token"), "Bearer token must NOT be issued for an expired token"

        print("[PASS] TC-AUTH-008 Verify OTP - Expired Verification Token")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
