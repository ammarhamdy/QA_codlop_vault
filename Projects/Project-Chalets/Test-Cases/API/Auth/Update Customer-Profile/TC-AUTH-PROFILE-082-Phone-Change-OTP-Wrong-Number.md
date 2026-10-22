---
tc_id: TC-AUTH-PROFILE-082
title: Reject OTP issued for a different phone
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
| Scenario | Reject OTP issued for a different phone |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | OTP for B; attempt to use it for C |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request phone-change OTP for B.
2. Attempt to verify that OTP while targeting C.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required**.
- OTP is not valid for a different target number.
- Login phone remains A.

## Notes

- OTP must be bound to target number and purpose; security expectation.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
