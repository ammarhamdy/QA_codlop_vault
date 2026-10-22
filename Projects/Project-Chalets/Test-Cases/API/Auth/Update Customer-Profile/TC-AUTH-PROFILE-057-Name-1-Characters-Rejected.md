---
tc_id: TC-AUTH-PROFILE-057
title: Reject name of 1 characters
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


## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Name             | م                                                                    |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send  name with 1 character.
2. Submit the name and inspect the response.
3. GET the profile to confirm persistence.


## Expected Result

- HTTP Status Code: `422 Unprocessable Content` .
- The API rejects invalid `name` and returns a field-specific validation error.
- No profile data is changed; a follow-up GET returns the original values.

## Notes

- PRD name length is 2–60 characters.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
