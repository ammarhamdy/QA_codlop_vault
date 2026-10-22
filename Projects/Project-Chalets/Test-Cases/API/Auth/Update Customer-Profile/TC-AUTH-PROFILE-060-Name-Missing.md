---
tc_id: TC-AUTH-PROFILE-060
title: "Validate name: missing"
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
| Name             | Missing                                                              |
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
-  All profile fields must remain unchanged.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script

- Not automated.
