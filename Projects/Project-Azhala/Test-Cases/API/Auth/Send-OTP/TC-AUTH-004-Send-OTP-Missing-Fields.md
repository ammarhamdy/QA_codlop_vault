---
tc_id: TC-AUTH-004
title: Send OTP - Missing Required Fields
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-001
tags:
  - test-case
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| (empty) | (empty) |

# Preconditions
- User is on the registration screen with empty form

# Steps
1. Send POST request to `/api/otp/send` without any form parameters
2. Observe response status and body

# Expected Result
- HTTP Status Code: 422
- Response body `success: false`
- Error listing missing required fields: `phone_code`, `phone`, `type`, `user_type_id`
- No `verification_token` returned

# Notes
- Backend enforces all four fields as required
- Empty body submission triggers comprehensive validation error

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-004: Send OTP - Missing Required Fields (POST /api/otp/send)"""
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

PAYLOAD = {}  # intentionally empty: all fields are required


def main() -> int:
    print(f"STEP 1: POST {ENDPOINT} with empty form body -> expect 422")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 422, f"expected 422, got {resp.status_code}"
        body = resp.json()
        
        print("Response:\n")
        print(json.dumps(body, ensure_ascii=False, indent=2))
        print("\n")

        print("STEP 2: assert all required fields flagged")
        assert body.get("success") is False, f"success should be false: {body}"
        data = body.get("data") or {}
        assert not data.get("verification_token"), "verification_token must NOT be returned"
        blob = resp.text.lower()
        for field in ("phone_code", "user_type_id", "phone"):
            assert field in blob, f"missing field error for '{field}'"

        print("[PASS] TC-AUTH-004 Send OTP - Missing Required Fields")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
