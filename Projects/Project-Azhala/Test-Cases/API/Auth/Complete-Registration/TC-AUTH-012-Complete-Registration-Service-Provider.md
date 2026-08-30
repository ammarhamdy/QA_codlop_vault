---
tc_id: TC-AUTH-012
title: Complete Registration - Service Provider Submission
priority:
  - High
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
| name | "Mohamed Provider" |
| address | "شارع العليا، الرياض" |
| latitude | "24.7331" |
| longitude | "46.7111" |
| commercial_register | "1122334455" |
| tax_number | "5566778899" |
| service_provider_type | "ui/ux" |
| user_type_id | "4" |

# Preconditions
- User has valid Bearer token from `/api/otp/verify`
- Token is stored in `Authorization: Bearer <token>` header

# Steps
1. Send POST request to `/api/auth/complete-registration` with form parameters: `name="Mohamed Provider"`, `address="شارع العليا، الرياض"`, `latitude="24.7331"`, `longitude="46.7111"`, `commercial_register="1122334455"`, `tax_number="5566778899"`, `service_provider_type="ui/ux"`
2. Include `Authorization: Bearer 59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 200
- Response body `success: true`
- `data.status` equals `"complete_bank_account"`
- `data.user.is_approved` equals `false` (for service provider role)
- `data.user.is_completed` equals `true`
- Routes user to Screen 4 (Bank Account Screen)
- `data.user.user_type.id` equals `4`
- `data.user.service_provider_type` equals `"ui/ux"`
- `data.user.business_info.commercial_register` and `data.user.business_info.tax_number` are populated

# Notes
- Service Provider (id=4) requires all owner fields plus service_provider_type
- is_approved is false, provider undergoes approval process
- business_info fields (commercial_register, tax_number) are initially null and populated later

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-012: Complete Registration - Service Provider Submission (POST /api/auth/complete-registration)
Token must belong to a user_type_id=4 (Service Provider) account registered via the OTP flow.

Reference: Scripts/Service-Provider/Auth/POST-complete-registration.md
"""

import os
import sys
import json
import requests

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/complete-registration"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "application/json",
}

AUTH_TOKEN = os.environ.get("AZHALA_BEARER_TOKEN")
if AUTH_TOKEN:
    HEADERS["Authorization"] = f"Bearer {AUTH_TOKEN}"

PAYLOAD = {
    "name": "Mohamed Provider",
    "address": "شارع العليا، الرياض",
    "latitude": "24.7331",
    "longitude": "46.7111",
    "commercial_register": "1122334455",
    "tax_number": "5566778899",
    "service_provider_type": "ui/ux",
}


def main() -> int:
    global HEADERS

    # Step 0: If no environment token is provided, run the OTP registration flow
    if not AUTH_TOKEN:
        print("STEP 0 (precondition): Requesting OTP...")
        resp_send = requests.post(
            f"{BASE_URL}/otp/send",
            headers=HEADERS,
            data={
                "phone_code": "966",
                "phone": "501000037",
                "type": "register",
                "user_type_id": "4",
            },
            timeout=30,
        )
        try:
            print(json.dumps(resp_send.json(), ensure_ascii=False, indent=2))
        except Exception:
            print(resp_send.text)

        send_data = resp_send.json().get("data") or {}
        vtoken = send_data.get("verification_token")
        if not vtoken:
            print(f"[FAIL] Failed to obtain verification_token: {resp_send.text}")
            return 1

        print("STEP 0 (precondition): Verifying OTP...")
        resp_verify = requests.post(
            f"{BASE_URL}/otp/verify",
            headers=HEADERS,
            data={
                "verification_token": vtoken,
                "otp_code": "12345",
                "device_token": "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof",
            },
            timeout=30,
        )
        print(json.dumps(resp_verify.json(), ensure_ascii=False, indent=2))

        verify_data = resp_verify.json().get("data") or {}
        bearer_token = verify_data.get("token")
        if not bearer_token:
            print(f"[FAIL] Failed to obtain bearer token: {resp_verify.text}")
            return 1

        HEADERS["Authorization"] = f"Bearer {bearer_token}"

    print(f"STEP 1-2: POST {ENDPOINT} (service provider fields + Bearer header)")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")

    try:
        assert resp.status_code == 200, f"expected 200, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert service provider completion contract")
        assert body.get("success") is True, f"success != true: {body}"
        data = body.get("data") or {}
        user = data.get("user") or {}

        assert data.get("status") == "complete_bank_account", f"status: {data.get('status')}"
        assert user.get("is_approved") is False, "is_approved should be false for provider"
        assert user.get("is_completed") is True, "is_completed should be true"
        assert int(user["user_type"]["id"]) == 4, "user_type.id should be 4 (Service Provider)"
        assert user.get("service_provider_type") == "ui/ux", "service_provider_type mismatch"

        business = user.get("business_info") or {}
        assert business.get("commercial_register"), "business_info.commercial_register not populated"
        assert business.get("tax_number"), "business_info.tax_number not populated"

        print("[PASS] TC-AUTH-012 Complete Registration - Service Provider Submission")
        return 0

    except AssertionError as exc:
        print(f"[FAIL] {exc}")
        try:
            print(json.dumps(resp.json(), ensure_ascii=False, indent=2))
        except Exception:
            print(f"  Response body: {resp.text[:500]}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
```
