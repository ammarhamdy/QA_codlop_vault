---
tc_id: TC-AUTH-PROFILE-097
title: Prevent reuse of an already consumed OTP
priority: High
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - phone-change
  - validation
run_result: "-"
---

# TC-AUTH-PROFILE-097-Phone-Change-Reused-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Prevent reuse of an already consumed OTP |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new; a successfully consumed OTP |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Complete a phone change using a valid OTP.
2. Attempt a second phone change using the same OTP.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required** for the second request.
- Consumed OTP is rejected for reuse.
- No unauthorized additional phone change occurs.

## Notes

- Security test inferred from one-time verification intent.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
