---
tc_id: TC-AUTH-002
title: Send OTP - Invalid Phone Format
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| phone_code | "966" |
| phone | "invalid" |
| user_type_id | "4" |
| type | "register" |

# Preconditions
- User is on the registration screen

# Steps
1. Send POST request to `/api/otp/send` with invalid phone parameter: `phone="invalid"`
2. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Validation error for `phone` field: message indicating invalid phone format
- No `verification_token` returned
- Client displays inline error without screen transition

# Notes
- Invalid phone format triggers backend validation
- Rate limiting (429) not tested here; this tests format validation only

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-002: Send OTP - Invalid Phone Format (POST /api/otp/send)"""
import os
import sys
import json
import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/otp/send"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}
_TOKEN = os.environ.get("AZHALA_BEARER_TOKEN")
if _TOKEN:
    HEADERS["Authorization"] = f"Bearer {_TOKEN}"

PAYLOAD = {
    "phone_code": "966",
    "phone": "invalid",
    "type": "register",
    "user_type_id": "4",
}


def main() -> int:
    print(f"STEP 1: POST {ENDPOINT} with invalid phone -> expect 422")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()
        
        print("Response:\n")
        print(json.dumps(body, ensure_ascii=False, indent=2))
        print("\n")
        
        print("STEP 2: assert validation failure contract")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("verification_token"), "verification_token must NOT be returned"
        assert "phone" in resp.text.lower(), "error payload should reference 'phone' field"

        print("[PASS] TC-AUTH-002 Send OTP - Invalid Phone Format")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
