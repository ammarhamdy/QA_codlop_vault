---
tc_id: TC-BANK-003
title: Bank Account - Missing Required Fields
priority:
  - Medium
status:
type:
  - API
linked_requirement: REQ-004
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| (empty form) | (empty) |

# Preconditions
- User has valid Bearer token from `/api/otp/verify` and completed profile completion
- Token is stored in `Authorization: Bearer <token>` header
- User is on Screen 4 (Bank Account Screen)

# Steps
1. Send POST request to `/api/bank-accounts` with empty form body
2. Include `Authorization: Bearer 67|GLZlrLJGKpbgRh9YIN2KzpSCB1wANoW2CncdXNiy629f8836` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Validation errors for all missing fields: `holder_name`, `account_number`, `iban`, `bank_name`
- `data` is null or empty
- Client shows inline errors for each field on Screen 4

# Notes
- All four fields are required at backend validation level
- Empty submission triggers comprehensive field error listing

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-BANK-003: Bank Account - Missing Required Fields (POST /api/bank-accounts)"""
import os
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/bank-accounts"

AUTH_TOKEN = os.environ.get(
    "AZHALA_BEARER_TOKEN", "67|GLZlrLJGKpbgRh9YIN2KzpSCB1wANoW2CncdXNiy629f8836"
)
HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
    "Authorization": f"Bearer {AUTH_TOKEN}",
}

PAYLOAD = {}  # intentionally empty: holder_name, account_number, iban, bank_name required


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} with empty form body + Bearer header")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert all four fields flagged")
        assert body.get("success") is False, f"success should be false: {body}"
        blob = resp.text.lower()
        for field in ("holder_name", "account_number", "iban", "bank_name"):
            assert field in blob, f"missing field error for '{field}'"

        print("[PASS] TC-BANK-003 Bank Account - Missing Required Fields")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
