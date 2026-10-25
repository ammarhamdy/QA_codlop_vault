---
tc_id: TC-AUTH-PROFILE-094
title: Reject invalid OTP when changing phone
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

# TC-AUTH-PROFILE-094-Phone-Change-Invalid-OTP

## Test Data

| Field | Value |
|---|---|
| Scenario | Reject invalid OTP when changing phone |
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
2. Submit a wrong OTP for the change-phone purpose.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required** (`400` or `422` possible).
- OTP is rejected and phone stays A.
- No completed-change SMS is sent to A.

## Notes

- OTP error codes in PRD include `OTP_INVALID`.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
