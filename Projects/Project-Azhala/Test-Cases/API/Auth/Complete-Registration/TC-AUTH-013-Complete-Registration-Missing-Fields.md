---
tc_id: TC-AUTH-013
title: Complete Registration - Missing Required Fields
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-003
tags:
  - test-case
run_result: pass
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
import random

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/complete-registration"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "application/json",
}

OWNER_CREDENTIALS = {
    "phone_code": "966",
    "phone": "503000013",
    "type": "register",
    "user_type_id": "2",  # 2 = Place Owner
    "otp_code": "12345",
    "device_token": "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof",
}

def obtain_owner_bearer_token() -> str:
    """Generates verification token via send-otp, then verifies it to return an active Bearer token."""
    # ---------------------------------------------------------
    # STEP 0A: Send OTP
    # ---------------------------------------------------------
    print("STEP 0A (precondition): POST /otp/send (Place Owner)")
    send_payload = {
        "phone_code": OWNER_CREDENTIALS["phone_code"],
        "phone": OWNER_CREDENTIALS["phone"],
        "type": OWNER_CREDENTIALS["type"],
        "user_type_id": OWNER_CREDENTIALS["user_type_id"],
    }
    
    resp_send = requests.post(
        f"{BASE_URL}/otp/send",
        headers=HEADERS,
        data=send_payload,
        timeout=30,
    )
    print(f"  -> HTTP {resp_send.status_code}")
    
    send_data = (resp_send.json().get("data") or {}) if resp_send.status_code in (200, 206, 429) else {}
    vtoken = send_data.get("verification_token")
    if not vtoken:
        raise RuntimeError(f"Failed to acquire verification_token: {resp_send.text}")
        
    print(f"  -> verification_token={vtoken}")

    # ---------------------------------------------------------
    # STEP 0B: Verify OTP
    # ---------------------------------------------------------
    print("STEP 0B (precondition): POST /otp/verify")
    verify_payload = {
        "verification_token": vtoken,
        "otp_code": OWNER_CREDENTIALS["otp_code"],
        "device_token": OWNER_CREDENTIALS["device_token"],
    }
    
    resp_verify = requests.post(
        f"{BASE_URL}/otp/verify",
        headers=HEADERS,
        data=verify_payload,
        timeout=30,
    )
    print(f"  -> HTTP {resp_verify.status_code}")

    verify_json = resp_verify.json()
    bearer_token = (verify_json.get("data") or {}).get("token")
    if not bearer_token:
        raise RuntimeError(f"Failed to extract Bearer token from OTP verify response: {resp_verify.text}")

    return bearer_token


def main() -> int:
    try:
        # 1. Obtain dynamic token
        auth_token = obtain_owner_bearer_token()
        
        # 2. Setup Headers for Complete Registration
        request_headers = HEADERS.copy()
        request_headers["Authorization"] = f"Bearer {auth_token}"
        
        # Intentionally empty: minimum required fields are validated server-side
        PAYLOAD = {}  

        print(f"STEP 1-2: POST {ENDPOINT} with empty form body + Bearer header")
        resp = requests.post(ENDPOINT, headers=request_headers, data=PAYLOAD, timeout=30)
        print(f"  -> HTTP {resp.status_code}")

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
        if 'resp' in locals():
            print(f"  Response body: {resp.text[:500]}")
        return 1
    except Exception as e:
        print(f"[ERROR] Script execution failed: {e}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
