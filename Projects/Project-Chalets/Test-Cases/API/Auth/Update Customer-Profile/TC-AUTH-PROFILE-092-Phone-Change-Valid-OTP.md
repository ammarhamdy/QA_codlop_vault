---
tc_id: TC-AUTH-PROFILE-092
title: "Change phone using valid OTP delivered to new number"
priority: Critical
status: Ready
type: API
linked_requirement: "PRD Section 17 — Account and Phone Change"
tags:
  - test-case
  - api
  - phone-change
  - validation
run_result: Not Run
---

# TC-AUTH-PROFILE-092-Phone-Change-Valid-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Change phone using valid OTP delivered to new number |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new unused; valid unexpired OTP for B |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Start the dedicated phone-change flow for B (`change_phone` purpose in PRD contract).
2. Read OTP sent to B.
3. Verify OTP using the implementation's phone-change verification endpoint.
4. Complete phone change and GET account profile.

## Expected Result

- HTTP `200 OK` on successful completion (provisional).
- Phone changes from A to B only after successful OTP verification for B.
- The account can subsequently authenticate using B as its login number.
- An SMS security notification is sent to A.

## Notes

- PRD contract names `POST /me/phone`; actual implementation endpoints must be confirmed.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
