---
tc_id: TC-AUTH-PROFILE-096
title: Do not change phone if OTP provider fails
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
| Scenario | Do not change phone if OTP provider fails |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | B new; simulated SMS provider failure |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Simulate or observe OTP delivery failure in a controlled environment.
2. Attempt to complete change without received OTP.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required** (`OTP_PROVIDER_UNAVAILABLE` may apply).
- No phone change is completed without valid OTP verification.
- Failure is communicated; original phone remains A.

## Notes

- Provider failure code from PRD.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
