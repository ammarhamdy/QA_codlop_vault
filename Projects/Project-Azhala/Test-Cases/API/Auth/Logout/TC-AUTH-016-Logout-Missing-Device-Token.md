---
tc_id: TC-AUTH-016
title: Logout - Missing Device Token
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-005
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| (no device token) | (empty) |

# Preconditions
- User is authenticated with valid Bearer token
- User is on a screen within the app

# Steps
1. Send POST request to `/api/auth/logout` without `device_token` form parameter
2. Include `Authorization: Bearer 62|7LB8g813foHUb1SdAj0ONNcvoV4NH5mwdaWekRMp520a76b1` header
3. Observe response status and app state

# Expected Result
- HTTP Status Code: 400 or 422
- Response body `success: false`
- Validation error for `device_token`: message indicating device token is required
- Logout may still proceed but device unregistration is skipped
- Client shows error: "Device token required for logout"

# Notes
- Device token is required field in logout request
- Without it, local device registration is not cleared
- User may still be logged out at server level but push notifications remain enabled for this device

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-016: Logout - Missing Device Token (POST /api/auth/logout)"""
import os
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/logout"

AUTH_TOKEN = os.environ.get(
    "AZHALA_BEARER_TOKEN", "62|7LB8g813foHUb1SdAj0ONNcvoV4NH5mwdaWekRMp520a76b1"
)
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
    "Authorization": f"Bearer {AUTH_TOKEN}",
}

PAYLOAD = {}  # intentionally omit device_token


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} WITHOUT device_token + Bearer header")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code in (400, 422), f"expected 400/422, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert device_token validation failure")
        assert body.get("success") is False, f"success should be false: {body}"
        assert "device_token" in resp.text.lower(), "error payload should reference 'device_token'"

        print("[PASS] TC-AUTH-016 Logout - Missing Device Token")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
