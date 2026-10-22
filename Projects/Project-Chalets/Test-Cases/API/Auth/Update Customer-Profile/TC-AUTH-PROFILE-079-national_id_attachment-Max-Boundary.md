---
tc_id: TC-AUTH-PROFILE-079
title: Accept national id attachment at size boundary
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

| Field                    | Value                                                                |
| ------------------------ | -------------------------------------------------------------------- |
| `national_id_attachment` | Valid allowed file of exactly 10240 KB                               |
| Authorization            | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY         | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Prepare a file at exact maximum size.
2. Submit request.
3. Observe The Response.

## Expected Result

- HTTP `200 OK` (provisional).
- File is accepted at the documented maximum, subject to exact byte definition.
- No unrelated fields change.

## Notes

- Boundary  only (10240 KB).
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
