---
tc_id: TC-AUTH-PROFILE-092
title: Lock OTP verification after configured failed attempts
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
| Scenario | Lock OTP verification after configured failed attempts |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | B new; five wrong OTP submissions |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request OTP for B.
2. Submit wrong OTP up to configured limit.
3. Try again while locked.

## Expected Result

- HTTP status for lock: **Contract clarification required**.
- OTP verification is blocked for 15 minutes at default 5 wrong attempts.
- Phone remains A.
- A security event is recorded.

## Notes

- PRD 5 attempts / 15-minute lock; configurable.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
