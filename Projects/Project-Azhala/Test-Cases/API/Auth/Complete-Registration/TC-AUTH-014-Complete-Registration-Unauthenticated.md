---
tc_id: TC-AUTH-014
title: Complete Registration - Unauthenticated Request
priority:
  - High
status:
type:
  - API
linked_requirement: REQ-003
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| (no auth header) | (none) |

# Preconditions
- User is not logged in or token is invalid

# Steps
1. Send POST request to `/api/auth/complete-registration` without `Authorization` header
2. Observe response status and body

# Expected Result
- HTTP Status Code: 401
- Response body `success: false`
- Error message: "Unauthorized" or "Invalid token"
- No `data.status` returned
- Client redirects to Screen 1 (Role Selection)
- Session not established

# Notes
- Bearer token is required for all authenticated endpoints
- Missing or invalid token triggers 401 response
- Unauthenticated access prevents profile completion

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-014: Complete Registration - Unauthenticated Request (POST /api/auth/complete-registration)"""
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/complete-registration"

# No Authorization header: request must be rejected at auth middleware.
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

PAYLOAD = {
    "name": "Hacked Attempt",
    "address": "شارع الملك فهد، الرياض",
    "latitude": "24.7136",
    "longitude": "46.6753",
}


def main() -> int:
    print(f"STEP 1: POST {ENDPOINT} WITHOUT Authorization header -> expect 401")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 401, f"expected 401, got {resp.status_code}"
        body = resp.json()

        print("STEP 2: assert no session state returned")
        assert body.get("success") is not True, "success must not be true"
        data = body.get("data") or {}
        assert not data.get("status"), "no registration status should be returned"

        print("[PASS] TC-AUTH-014 Complete Registration - Unauthenticated Request")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
