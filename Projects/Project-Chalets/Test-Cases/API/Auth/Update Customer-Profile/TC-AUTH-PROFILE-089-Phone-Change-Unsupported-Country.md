---
tc_id: TC-AUTH-PROFILE-089
title: Reject unsupported country code
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

# TC-AUTH-PROFILE-105-Phone-Change-Unsupported-Country

## Test Data

| Field | Value |
|---|---|
| Scenario | Reject unsupported country code |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | Unsupported phone country code |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Select a disabled country for B.
2. Request change-phone OTP.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required**.
- `COUNTRY_NOT_ALLOWED`-type error is returned.
- No OTP is sent to the disabled country; phone A remains unchanged.

## Notes

- PRD country configuration applies to OTP.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
