---
tc_id: TC-AUTH-PROFILE-063
title: Update name and supported optional fields
priority: Medium
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - customer-profile
  - validation
run_result: pass
---


## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Name             | محمود                                                                |
| National ID      | 1237456812                                                           |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Record current profile.
2. Send valid name and National ID in one multipart request.
3. Inspect response and GET profile.

## Expected Result

- HTTP `200 OK` (provisional).
- Name and National ID are updated only if the endpoint supports both fields.
- Unsubmitted fields remain unchanged.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
