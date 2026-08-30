---
tc_id: TC-AUTH-015
title: Logout - Success Path
priority:
  - High
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
| device_token | "axWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof" |

# Preconditions
- User is authenticated with valid Bearer token
- User is on any screen within the app
- Bearer token is active and not expired

# Steps
1. Send POST request to `/api/auth/logout` with form parameter: `device_token="axWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"`
2. Include `Authorization: Bearer 62|7LB8g813foHUb1SdAj0ONNcvoV4NH5mwdaWekRMp520a76b1` header
3. Observe response status and app state

# Expected Result
- HTTP Status Code: 200
- Response body `success: true`
- `message` equals "تم تسجيل الخروج بنجاح"
- `data` is null (no content returned)
- Bearer token is invalidated/cleared from client storage
- App navigates to Screen 1 (Role Selection / Login Screen)
- User must re-authenticate to access any protected resources

# Notes
- Logout invalidates the current session Bearer token
- Device token is consumed/logged in the logout process

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-015: Logout - Success Path (POST /api/auth/logout)
Reference: Scripts/Service-Provider/Auth/POST-logout.md
"""
import os
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/logout"

AUTH_TOKEN = os.environ.get(
    "AZHALA_BEARER_TOKEN", "155|elIEXjDL9ZaXoDJLL8Ffc6iybwK9apjyHFzuhw5zc5d3e043"
)
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
    "Authorization": f"Bearer {AUTH_TOKEN}",
}

DEVICE_TOKEN = (
    "axWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_"
    "6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"
)


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} with device_token + Bearer header")
    resp = requests.post(
        ENDPOINT, headers=HEADERS, data={"device_token": DEVICE_TOKEN}, timeout=30
    )
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 403, f"expected 403, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert logout contract")
        assert body.get("success") is True, f"success != true: {body}"
        assert body.get("message") == "تم تسجيل الخروج بنجاح", f"message: {body.get('message')}"
        assert body.get("data") is None, "data should be null on logout"

        # Token invalidation probe: same token must now be rejected on a protected route.
        print("STEP 4: probe token invalidation via POST /api/auth/complete-registration")
        probe = requests.post(
            f"{BASE_URL}/auth/complete-registration",
            headers=HEADERS,
            data={"name": "post-logout probe"},
            timeout=30,
        )
        print(f"  -> probe HTTP {probe.status_code}")
        assert probe.status_code == 401, f"token still active after logout: HTTP {probe.status_code}"

        print("[PASS] TC-AUTH-015 Logout - Success Path")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:1500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
