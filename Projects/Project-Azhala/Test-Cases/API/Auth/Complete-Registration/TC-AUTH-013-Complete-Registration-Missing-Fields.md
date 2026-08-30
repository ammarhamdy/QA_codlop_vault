---
tc_id: TC-AUTH-013
title: Complete Registration - Missing Required Fields
priority:
  - Medium
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
| (empty form) | (empty) |

# Preconditions
- User has valid Bearer token from `/api/otp/verify`
- User is on Screen 3 (Profile Completion)

# Steps
1. Send POST request to `/api/auth/complete-registration` with empty form body
2. Include `Authorization: Bearer 59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Validation errors for missing required fields based on user_type
- For all types: `name` is required
- Client shows inline error for each missing field
- `data.status` is NOT updated to `complete_bank_account`
- User remains on Screen 3

# Notes
- Required fields vary by user_type_id:
  - Customer (1): name, address, latitude, longitude
  - Owner (2): name, address, latitude, longitude, commercial_register, tax_number
  - Service Provider (4): name, address, latitude, longitude, commercial_register, tax_number, service_provider_type
- Backend validates minimum required fields regardless of type

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-013: Complete Registration - Missing Required Fields (POST /api/auth/complete-registration)"""
import os
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/complete-registration"

AUTH_TOKEN = os.environ.get(
    "AZHALA_BEARER_TOKEN", "59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61"
)
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
    "Authorization": f"Bearer {AUTH_TOKEN}",
}

PAYLOAD = {}  # intentionally empty: minimum required fields are validated server-side


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} with empty form body + Bearer header")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert validation failure and no state transition")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert data.get("status") != "complete_bank_account", "status must NOT advance"
        assert "name" in resp.text.lower(), "error payload should reference 'name'"

        print("[PASS] TC-AUTH-013 Complete Registration - Missing Required Fields")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
