---
tc_id: TC-AUTH-PROFILE-059
title: "Validate name: empty"
priority: Medium
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - customer-profile
  - validation
run_result: Pass
---


## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Name             | (empty)                                                              |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Submit the described name input with all other fields omitted.
2. Inspect the response.
3. GET the profile to check whether anything changed.

## Expected Result

- HTTP Status Code: `422 Unprocessable Content`.
- The API rejects empty  `name` and returns a field-specific validation error indicating that name field is required .
- No profile data is changed; a follow-up GET returns the original values.

## Notes

- Do not assume optional/required or character-class rules beyond the 2–60 character PRD constraint.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
