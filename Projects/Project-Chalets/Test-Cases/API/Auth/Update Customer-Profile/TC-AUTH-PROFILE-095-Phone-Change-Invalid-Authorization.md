---
tc_id: TC-AUTH-PROFILE-095
title: Reject phone change with invalid authentication
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
| Scenario | Reject phone change with invalid authentication |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | `Bearer invalid_token`; target B |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Attempt change-phone flow with invalid token.
2. Inspect response.
3. GET original account with valid token.

## Expected Result

- HTTP Status Code: `401 Unauthorized` (provisional; verify API contract).
- The update request is rejected as unauthenticated.
- No customer profile values are modified.

## Notes

- Authentication requirement per PRD contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
