---
tc_id: TC-AUTH-PROFILE-085
title: Do not send successful-change SMS on rejected change
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

# TC-AUTH-PROFILE-101-Phone-Change-Failed-No-SMS

## Test Data

| Field | Value |
|---|---|
| Scenario | Do not send successful-change SMS on rejected change |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B new; wrong OTP |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Request OTP for B.
2. Submit invalid OTP.
3. Check old-number SMS events.

## Expected Result

- HTTP status: **Contract clarification required** for invalid OTP.
- Phone remains A.
- No SMS falsely announcing a successful phone change is sent to A.

## Notes

- Confirm the exact response schema and HTTP status with the implementation API contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
