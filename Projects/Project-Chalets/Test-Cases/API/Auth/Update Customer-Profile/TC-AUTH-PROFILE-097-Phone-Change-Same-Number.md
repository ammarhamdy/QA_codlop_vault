---
tc_id: TC-AUTH-PROFILE-097
title: Change phone to the existing number
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
| Scenario | Change phone to the existing number |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A as both old and target |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Start change-phone operation targeting existing A.
2. Inspect response.
3. GET profile.

## Expected Result

- HTTP status and no-op policy: **Contract clarification required**.
- Existing phone remains A.
- No unintended duplicate account is created.

## Notes

- PRD does not define same-number behavior.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
