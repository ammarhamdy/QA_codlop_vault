---
tc_id: TC-AUTH-PROFILE-088
title: Reject malformed new phone
priority: High
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - phone-change
  - negative
run_result: "-"
---


## Test Data

| Field | Value |
|---|---|
| Scenario | Reject malformed new phone |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | B is malformed or wrong length |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Submit a malformed target phone in the change-phone flow.
2. Inspect response.
3. GET profile.

## Expected Result

- HTTP `422` (provisional; confirm contract).
- `PHONE_INVALID`-type error is returned.
- Original login phone A remains unchanged.

## Notes

- Confirm the exact response schema and HTTP status with the implementation API contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
