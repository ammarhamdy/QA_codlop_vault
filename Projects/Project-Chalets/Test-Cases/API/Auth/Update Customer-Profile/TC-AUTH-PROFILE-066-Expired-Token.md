---
tc_id: TC-AUTH-PROFILE-066
title: Reject profile update with expired token
priority: High
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - customer-profile
  - negative
run_result: Pass
---

# TC-AUTH-PROFILE-072-Expired-Token

## Test Data

| Field            | Value                                   |
| ---------------- | --------------------------------------- |
| Name             | ميار                                    |
| Authorization    | A verified expired/revoked access token |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e        |

## Preconditions

- An active customer with a completed profile is logged in.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Verify a valid session can access the profile.
2. Submit an otherwise valid update using the specified authorization state.
3. GET the profile using the original valid token.

## Expected Result

- HTTP Status Code: `401 Unauthorized` (provisional; verify API contract).
- The update request is rejected as unauthenticated.
- No customer profile values are modified.

## Notes

- 401 is provisional pending API contract confirmation.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

## Script
