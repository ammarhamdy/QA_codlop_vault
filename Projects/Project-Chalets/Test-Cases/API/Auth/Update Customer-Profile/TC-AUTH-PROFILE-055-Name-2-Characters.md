---
tc_id: TC-AUTH-PROFILE-055
title: Accept a name of exactly 2 characters
priority: Medium
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - customer-profile
  - validation
run_result: Fail
---


## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Name             | مي                                                                   |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send a valid 2-character name.
2. Submit the name and inspect the response.
3. GET the profile to confirm persistence.

## Expected Result

- HTTP Status Code: `200 OK`.
- `success` is `true`.
- The saved `name` equals the submitted 2-character name when retrieved again using `GET /auth/customer-profile`.
- All other profile fields remain unchanged.

## Notes

- PRD allows 2–60 characters.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
