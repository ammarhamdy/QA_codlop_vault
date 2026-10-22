---
tc_id: TC-AUTH-PROFILE-083
title: Reject login OTP used for phone change
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
| Scenario | Reject login OTP used for phone change |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | Valid login OTP for B, used for change_phone |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request login-purpose OTP for B.
2. Attempt to complete a phone change using it.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required**.
- OTP from `login` purpose cannot authorize `change_phone`.
- Phone remains A.

## Notes

- PRD distinguishes OTP purposes; security expectation.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
