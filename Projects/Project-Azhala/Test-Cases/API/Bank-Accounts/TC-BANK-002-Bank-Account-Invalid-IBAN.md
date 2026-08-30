---
tc_id: TC-BANK-002
title: Bank Account - Invalid IBAN Format
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
| holder_name | "Ali Account" |
| account_number | "1234567101" |
| iban | "invalid-iban" |
| bank_name | "بنك مصر" |

# Preconditions
- User has valid Bearer token from `/api/otp/verify` and completed profile completion
- Token is stored in `Authorization: Bearer <token>` header
- User is on Screen 4 (Bank Account Screen)

# Steps
1. Send POST request to `/api/bank-accounts` with invalid IBAN: `iban="invalid-iban"`
2. Include `Authorization: Bearer 67|GLZlrLJGKpbgRh9YIN2KzpSCB1wANoW2CncdXNiy629f8836` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Validation error for `iban` field: message indicating invalid IBAN format
- `data.is_main` is NOT set
- Bank account NOT saved to database
- Client shows inline error on Screen 4

# Notes
- IBAN format is validated server-side using regex pattern
- Saudi Arabian IBAN structure expected (27 characters typically)
- Invalid format prevents bank account storage

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-BANK-002: Bank Account - Invalid IBAN Format (POST /api/bank-accounts)"""
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

PAYLOAD = {
    "holder_name": "Ali Account",
    "account_number": "1234567101",
    "iban": "invalid-iban",  # malformed on purpose
    "bank_name": "بنك مصر",
}


def main() -> int:
    print(f"STEP 1-2: POST {ENDPOINT} with invalid iban -> expect 422")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert IBAN rejected and nothing persisted")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("is_main"), "is_main must NOT be set on validation failure"
        assert "iban" in resp.text.lower(), "error payload should reference 'iban'"

        print("[PASS] TC-BANK-002 Bank Account - Invalid IBAN Format")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
