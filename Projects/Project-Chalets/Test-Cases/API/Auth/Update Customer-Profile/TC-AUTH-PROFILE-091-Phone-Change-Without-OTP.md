---
tc_id: TC-AUTH-PROFILE-091
title: "Prevent phone change without OTP verification"
priority: Critical
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

# TC-AUTH-PROFILE-091-Phone-Change-Without-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Prevent phone change without OTP verification |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | Existing number A; unused number B; `phone_code=966`, `phone=B`; no OTP |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. GET and save current phone A.
2. Send POST /auth/update-customer-profile with phone B and no OTP verification.
3. GET profile and inspect phone.
4. Attempt login/OTP flow with A and B only in a safe test environment.

## Expected Result

- HTTP status: **Contract clarification required** (`4xx` expected if endpoint attempts an unauthorized direct phone change).
- The account login phone remains A; phone B is not activated as the login number.
- No successful phone-change security SMS should be sent for an unsuccessful change.

## Notes

- PRD mandates OTP sent to new number before change; Postman exposes phone field but does not document how it enforces OTP.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
