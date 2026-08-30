---
tc_id: TC-AUTH-017
title: Logout - Unauthenticated Request
priority:
  - Medium
status:
type:
  - API
linked_requirement: REQ-005
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| (no auth header) | (none) |

# Preconditions
- User is NOT authenticated (no Bearer token)

# Steps
1. Send POST request to `/api/auth/logout` without `Authorization` header
2. Optionally include `device_token` form parameter
3. Observe response status and app state

# Expected Result
- HTTP Status Code: 401
- Response body `success: false`
- Error message: "Unauthorized" or "Invalid token"
- No logout action performed
- Client shows error: "Please login to perform logout"
- User remains authenticated and on current screen

# Notes
- All authenticated endpoints require valid Bearer token
- Without token, server rejects the request outright
- Logout action is impossible when not logged in

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-017: Logout - Unauthenticated Request (POST /api/auth/logout)"""
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/logout"

# No Authorization header: request must be rejected at auth middleware.
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

DEVICE_TOKEN = (
    "axWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_"
    "6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"
)


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} WITHOUT Authorization header -> expect 401")
    resp = requests.post(
        ENDPOINT, headers=HEADERS, data={"device_token": DEVICE_TOKEN}, timeout=30
    )
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 401, f"expected 401, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert rejection without logout side effects")
        assert body.get("success") is not True, "success must not be true"
        assert body.get("data") is None, "no data should be returned"

        print("[PASS] TC-AUTH-017 Logout - Unauthenticated Request")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
