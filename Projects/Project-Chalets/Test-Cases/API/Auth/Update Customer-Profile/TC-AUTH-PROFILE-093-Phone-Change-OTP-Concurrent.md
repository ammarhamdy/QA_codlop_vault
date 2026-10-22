---
tc_id: TC-AUTH-PROFILE-093
title: Prevent competing phone-change confirmations
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
| Scenario | Prevent competing phone-change confirmations |
| Endpoint | `POST /auth/update-customer-profile`; dedicated OTP/phone endpoint as per API contract |
| Target field | `phone / phone_code / OTP` |
| Input | Two distinct pending change attempts B and C |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- The same active customer has an authenticated session. The old phone number is accessible for checking the security SMS, and a distinct test phone number is available. The OTP-based phone-change implementation/endpoint must be identified before execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Start two phone-change challenges under same account.
2. Attempt confirmation of both in controlled order.
3. GET profile.

## Expected Result

- HTTP status: **Contract clarification required** for conflict/replay.
- No race condition results in inconsistent account phone.
- Only a legitimately verified, accepted target number becomes active.

## Notes

- Concurrency behavior not specified; security/consistency exploratory.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
