---
tc_id: TC-AUTH-PROFILE-093
title: "Reject changing phone to number owned by another account"
priority: High
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

# TC-AUTH-PROFILE-093-Phone-Change-Registered-Number

## Test Data

| Field | Value |
|---|---|
| Scenario | Reject changing phone to number owned by another account |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | A old; B belongs to customer 2 |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Start change-phone flow using B.
2. Inspect error response.
3. GET profiles of both accounts.

## Expected Result

- HTTP status: **Contract clarification required** (`409 Conflict` or `422` are possibilities, not PRD guarantees).
- Response message: `هذا الرقم مرتبط بحساب آخر`.
- Neither account's login phone changes.

## Notes

- PRD error code: `PHONE_TAKEN`.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
