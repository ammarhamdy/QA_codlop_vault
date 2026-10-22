---
tc_id: TC-AUTH-PROFILE-091
title: Enforce hourly/daily OTP send limits
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

# TC-AUTH-PROFILE-107-Phone-Change-OTP-Send-Limit

## Test Data

| Field | Value |
|---|---|
| Scenario | Enforce hourly/daily OTP send limits |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | B new; controlled send-limit environment |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request change-phone OTP repeatedly respecting cooldown.
2. Reach configured hourly/daily send limit.
3. Attempt one more request.

## Expected Result

- HTTP `429 Too Many Requests` (provisional).
- Further OTP requests are rate-limited.
- Phone remains A; no change is completed.

## Notes

- PRD default 5/hour, 20/day; confirm scope and test without real SMS abuse.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
