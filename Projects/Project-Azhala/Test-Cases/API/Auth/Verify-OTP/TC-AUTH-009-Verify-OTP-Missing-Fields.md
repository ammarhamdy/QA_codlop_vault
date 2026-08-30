---
tc_id: TC-AUTH-009
title: Verify OTP - Missing Required Fields
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
| (empty body) | (empty) |

# Preconditions
- User is on verification screen with no form input

# Steps
1. Send POST request to `/api/otp/verify` with empty form body
2. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Validation errors for missing: `verification_token` and `otp_code`
- No `data.token` issued
- Client shows inline validation errors

# Notes
- Both fields are required at backend validation level
- Empty submission without tokens/codes fails fast

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-009: Verify OTP - Missing Required Fields (POST /api/otp/verify)"""
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
VERIFY_ENDPOINT = f"{BASE_URL}/otp/verify"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}

PAYLOAD = {}  # intentionally empty: verification_token and otp_code are required


def main() -> int:
    print(f"STEP 1: POST {VERIFY_ENDPOINT} with empty form body -> expect 422")
    resp = requests.post(VERIFY_ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()

        print("STEP 2: assert both required fields flagged")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("token"), "Bearer token must NOT be issued"
        blob = resp.text.lower()
        assert "verification_token" in blob, "error payload should reference 'verification_token'"
        assert "otp_code" in blob, "error payload should reference 'otp_code'"

        print("[PASS] TC-AUTH-009 Verify OTP - Missing Required Fields")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
