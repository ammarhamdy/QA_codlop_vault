---
tc_id: TC-AUTH-PROFILE-087
title: Old number must no longer authenticate as original account
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
| Scenario | Old number must no longer authenticate as original account |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new verified |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Complete A → B change.
2. Request OTP for A and verify in a controlled test environment.
3. Check which account, if any, is associated with A.

## Expected Result

- Phone change HTTP `200` (provisional).
- Old number A is no longer linked to the original customer's login identity.
- No authentication using A grants access to the original customer's account.

## Notes

- Old number might be treated as new registration; do not assume a particular status code.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
