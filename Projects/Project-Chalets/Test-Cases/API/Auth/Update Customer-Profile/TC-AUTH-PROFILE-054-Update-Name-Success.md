---
tc_id: TC-AUTH-PROFILE-054
title: Update customer name successfully
priority: High
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

| Field            | Value                            |
| ---------------- | -------------------------------- |
| Name             | سلمان أحمد`                      |
| Authorization    | `Bearer {{valid_token}}`         |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e |
|                  |                                  |

# Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send a valid name different from the saved name.
2. Inspect status and response.
3. GET the customer profile again.

## Expected Result

- HTTP Status Code: `200 OK` .
- `success` is `true` .
- The saved `name` equals `سلمان أحمد` when retrieved again using `GET /auth/customer-profile`.
- All other profile fields remain unchanged.

## Notes

- PRD Section 17 explicitly allows changing the name.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script
