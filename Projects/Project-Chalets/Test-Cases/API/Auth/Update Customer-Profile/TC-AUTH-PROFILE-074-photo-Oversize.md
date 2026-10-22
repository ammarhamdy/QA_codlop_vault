---
tc_id: TC-AUTH-PROFILE-074
title: Reject oversized profile photo file
priority: Medium
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


## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| profile-photo    | File larger than 5120 kb                                             |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |


## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Attach a file above the documented maximum.
2. Submit request.
3. Observe the response .

## Expected Result

- HTTP Status Code: `422 Unprocessable Content` (provisional; verify API contract).
- The API rejects invalid `photo` and returns a field-specific validation error.
- No profile data is changed; a follow-up GET returns the original values.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
