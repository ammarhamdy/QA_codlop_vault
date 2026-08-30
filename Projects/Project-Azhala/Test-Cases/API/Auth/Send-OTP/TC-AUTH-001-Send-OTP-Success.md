---
tc_id: TC-AUTH-001
title: Send OTP - Success Path
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
| phone | "501000017" |
| user_type_id | "4" |
| type | "register" |

# Preconditions
- User is on the registration screen
- No existing verification token or token has expired

# Steps
1. Send POST request to `/api/otp/send` with form parameters: `phone_code="966"`, `phone="501000017"`, `type="register"`, `user_type_id="4"`
2. Verify response contains `success: true`
3. Extract `verification_token` from response data
4. Verify `expires_at` timestamp is set (90-minute TTL)

# Expected Result
- HTTP Status Code: 200
- Response body confirms `success: true` and `message` indicates OTP sent
- `data.verification_token` is a valid UUID v4 format
- `data.expires_at` is set and is 90 seconds from request time
- Bearer token is NOT issued at this stage (only verification_token)

# Notes
- Test data uses valid Saudi phone format (966 50XXXXXXX)
- Role type 4 corresponds to Service Provider

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-001: Send OTP - Success Path (POST /api/otp/send)"""
import os
import re
import sys

import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/otp/send"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "*/*",
}
# Reference curl sends an Authorization header; endpoint is public, so it is optional.
_TOKEN = os.environ.get("AZHALA_BEARER_TOKEN")
if _TOKEN:
    HEADERS["Authorization"] = f"Bearer {_TOKEN}"

PAYLOAD = {
    "phone_code": "966",
    "phone": "501000033",
    "type": "register",
    "user_type_id": "4",
}

UUID_RE = re.compile(
    r"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", re.IGNORECASE
)


def main() -> int:
    print(f"STEP 1: \n\t\tPOST {ENDPOINT} \n\t\tform-data={PAYLOAD}")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")
    try:
        assert resp.status_code == 200, f"expected 200, got {resp.status_code}"
        body = resp.json()

        print("STEP 2: assert success flag")
        assert body.get("success") is True, f"success != true: {body}"
        data = body.get("data") or {}

        print("STEP 3: extract verification_token (UUID format)")
        vtoken = data.get("verification_token")
        assert vtoken, "verification_token missing from data"
        assert UUID_RE.match(vtoken), f"not a UUID: {vtoken}"
        print(f"\t\tvtoken: {vtoken}")

        print("STEP 4: assert expires_at is present")
        assert data.get("expires_at"), "expires_at missing"
        assert "token" not in data, "Bearer token must NOT be issued at this stage"

        print("[PASS] TC-AUTH-001 Send OTP - Success Path")
        return 0
    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
