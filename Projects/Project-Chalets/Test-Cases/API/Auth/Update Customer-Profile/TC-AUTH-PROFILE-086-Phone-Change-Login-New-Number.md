---
tc_id: TC-AUTH-PROFILE-086
title: Authenticate using new number after successful change
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


## Test Data

| Field | Value |
|---|---|
| Scenario | Authenticate using new number after successful change |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new verified |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Complete A → B phone change.
2. Start login OTP flow with B.
3. Verify valid OTP.
4. GET profile.

## Expected Result

- Phone change completes with HTTP `200` (provisional).
- Login using B succeeds with the login endpoint's documented success status.
- Profile reflects B as login phone.

## Notes

- Do not assume whether old sessions are revoked; PRD does not specify.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
