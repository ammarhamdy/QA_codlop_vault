---
tc_id: TC-AUTH-011
title: Complete Registration - Owner Submission
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
| name | "Saoud Owner" |
| address | "شارع الملك فهد، الرياض" |
| latitude | "24.7136" |
| longitude | "46.6753" |
| commercial_register | "1234567890" |
| tax_number | "987654321" |
| user_type_id | "2" |

# Preconditions
- User has valid Bearer token from `/api/otp/verify`
- Token is stored in `Authorization: Bearer <token>` header

# Steps
1. Send POST request to `/api/auth/complete-registration` with form parameters: `name="Saoud Owner"`, `address="شارع الملك فهد، الرياض"`, `latitude="24.7136"`, `longitude="46.6753"`, `commercial_register="1234567890"`, `tax_number="987654321"`
2. Include `Authorization: Bearer 59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 200
- Response body `success: true`
- `data.status` equals `"complete_bank_account"`
- `data.user.is_approved` equals `false` (for owner role)
- `data.user.is_completed` equals `true`
- Routes user to Screen 4 (Bank Account Screen)
- `data.user.user_type.id` equals `2`
- `data.user.commercial_register` and `data.user.tax_number` are populated

# Notes
- Owner (Place Owner, id=2) requires commercial_register and tax_number
- is_approved is false for owner type, pending documentation review

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-011: Complete Registration - Owner Submission (POST /api/auth/complete-registration)

Token must belong to a user_type_id=2 (Place Owner) account registered via the OTP flow.
"""

import json
import os
import sys
import requests
import random


def generate_commercial_register() -> str:
    """Generates a valid 10-digit Commercial Registration number."""
    # CR numbers in Saudi typically start with 10 or 70 followed by 8 digits
    prefix = random.choice(["10", "70"])
    remaining_digits = "".join(random.choices("0123456789", k=8))
    return f"{prefix}{remaining_digits}"


def generate_tax_number() -> str:
    """Generates a valid 15-digit Saudi VAT/Tax number."""
    # Saudi Tax/VAT numbers start with '3', have 13 random digits, and end with '3'
    middle_digits = "".join(random.choices("0123456789", k=13))
    return f"3{middle_digits}3"

BASE_URL = "https://azhala.codlop.sa/api"
ENDPOINT = f"{BASE_URL}/auth/complete-registration"

HEADERS = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Accept": "application/json",
}

OWNER_CREDENTIALS = {
    "phone_code": "966",
    "phone": "503000011",
    "type": "register",
    "user_type_id": "2",  # 2 = Place Owner
    "otp_code": "12345",
    "device_token": "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof",
}

PAYLOAD = {
    "name": "Saoud Owner",
    "address": "شارع الملك فهد، الرياض",
    "latitude": "24.7136",
    "longitude": "46.6753",
	"commercial_register": generate_commercial_register(),  # 10 digits
    "tax_number": generate_tax_number(),                    # 15 digits
}


def obtain_owner_bearer_token() -> str:
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

    send_data = (resp_send.json().get("data") or {}) if resp_send.status_code in (200, 429) else {}
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
    global HEADERS

    # Allow fallback/override from environment if explicitly provided
    env_token = os.environ.get("AZHALA_BEARER_TOKEN")
    if env_token:
        print("Using AZHALA_BEARER_TOKEN from environment.")
        bearer_token = env_token
    else:
        try:
            bearer_token = obtain_owner_bearer_token()
        except Exception as err:
            print(f"[FAIL] Precondition error: {err}")
            return 1

    HEADERS["Authorization"] = f"Bearer {bearer_token}"

    print(f"\nSTEP 1-2: POST {ENDPOINT} (owner fields + Bearer header)")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")

    try:
        assert resp.status_code == 206, f"expected 206, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert owner completion contract")
        assert body.get("success") is True, f"success != true: {body}"
        data = body.get("data") or {}
        user = data.get("user") or {}

        assert data.get("status") == "complete_bank_account", f"status: {data.get('status')}"
        assert user.get("is_approved") is False, "is_approved should be false for owner"
        assert user.get("is_completed") is True, "is_completed should be true"
        assert int(user["user_type"]["id"]) == 2, "user_type.id should be 2 (Place Owner)"

        business = user.get("business_info") or user
        assert business.get("commercial_register"), "commercial_register not populated"
        assert business.get("tax_number"), "tax_number not populated"

        print("\nResponse:")
        print(json.dumps(body, ensure_ascii=False, indent=2))

        print("\n[PASS] TC-AUTH-011 Complete Registration - Owner Submission")
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
