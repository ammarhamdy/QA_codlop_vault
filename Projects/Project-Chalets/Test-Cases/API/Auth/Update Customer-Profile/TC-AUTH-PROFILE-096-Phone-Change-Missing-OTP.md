---
tc_id: TC-AUTH-PROFILE-096
title: "Reject missing OTP in verification stage"
priority: High
status: Ready
type: API
linked_requirement: "PRD Section 17 — Account and Phone Change"
tags:
  - test-case
  - api
  - phone-change
  - negative
run_result: Not Run
---

# TC-AUTH-PROFILE-096-Phone-Change-Missing-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Reject missing OTP in verification stage |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new; OTP omitted |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request OTP for B.
2. Call verification/confirmation step without OTP.
3. GET profile.

## Expected Result

- HTTP `422` expected provisionally for missing required OTP (verify contract).
- No phone change occurs.
- Field-specific validation error is returned.

## Notes

- Confirm the exact response schema and HTTP status with the implementation API contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
