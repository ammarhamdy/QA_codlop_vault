---
tc_id: TC-AUTH-010
title: Complete Registration - Customer Submission
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
| name | "Ahmed Customer" |
| address | "شارع التعاون، الرياض" |
| latitude | "24.7136" |
| longitude | "46.6753" |
| user_type_id | "1" |

# Preconditions
- User has valid Bearer token from `/api/otp/verify`
- Token is stored in `Authorization: Bearer <token>` header

# Steps
1. Send POST request to `/api/auth/complete-registration` with form parameters: `name="Ahmed Customer"`, `address="شارع التعاون، الرياض"`, `latitude="24.7136"`, `longitude="46.6753"`
2. Include `Authorization: Bearer 59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61` header
3. Observe response status and body

# Expected Result
- HTTP Status Code: 200
- Response body `success: true`
- `data.status` equals `"complete_bank_account"`
- `data.user.is_completed` equals `true`
- `data.user.is_approved` equals `true` (for customer role)
- Routes user to Screen 4 (Bank Account Screen)
- `data.user.user_type.id` equals `1`

# Notes
- Customer submission requires only name, address, latitude, longitude
- After completion, status transitions to `complete_bank_account`
- is_approved is true for customer type on first submission

---

# Attachments/Script

```python
#!/usr/bin/env python3
"""TC-AUTH-010: Complete Registration - Customer Submission (POST /api/auth/complete-registration)
Token must belong to a user_type_id=1 (Customer) account registered via the OTP flow.
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

CUSTOMER_CREDENTIALS = {
    "phone_code": "966",
    "phone": "502000021",
    "type": "register",
    "user_type_id": "1",  # 1 = Customer
    "otp_code": "12345",
    "device_token": "bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof",
}

PAYLOAD = {
    "name": "Ahmed Customer",
    "address": "شارع التعاون، الرياض",
    "latitude": "24.7136",
    "longitude": "46.6753",
}


def obtain_customer_bearer_token() -> str:
    # ---------------------------------------------------------
    # STEP 0A: Send OTP
    # ---------------------------------------------------------
    print("STEP 0A (precondition): POST /otp/send (Customer)")
    send_payload = {
        "phone_code": CUSTOMER_CREDENTIALS["phone_code"],
        "phone": CUSTOMER_CREDENTIALS["phone"],
        "type": CUSTOMER_CREDENTIALS["type"],
        "user_type_id": CUSTOMER_CREDENTIALS["user_type_id"],
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
        "otp_code": CUSTOMER_CREDENTIALS["otp_code"],
        "device_token": CUSTOMER_CREDENTIALS["device_token"],
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
            bearer_token = obtain_customer_bearer_token()
        except Exception as err:
            print(f"[FAIL] Precondition error: {err}")
            return 1

    HEADERS["Authorization"] = f"Bearer {bearer_token}"

    print(f"\nSTEP 1-2: POST {ENDPOINT} (customer fields + Bearer header)")
    resp = requests.post(ENDPOINT, headers=HEADERS, data=PAYLOAD, timeout=30)
    print(f"  -> HTTP {resp.status_code}")

    try:
        assert resp.status_code == 206, f"expected 200, got {resp.status_code}"
        body = resp.json()

        print("STEP 3: assert profile completion contract")
        assert body.get("success") is True, f"success != true: {body}"
        data = body.get("data") or {}
        user = data.get("user") or {}

        assert data.get("status") == "complete_bank_account", f"status: {data.get('status')}"
        assert user.get("is_completed") is True, "is_completed should be true"
        assert user.get("is_approved") is True, "is_approved should be true for customer"
        assert int(user["user_type"]["id"]) == 1, "user_type.id should be 1 (Customer)"

        print("\nResponse:")
        print(json.dumps(body, ensure_ascii=False, indent=2))

        print("\n[PASS] TC-AUTH-010 Complete Registration - Customer Submission")
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
