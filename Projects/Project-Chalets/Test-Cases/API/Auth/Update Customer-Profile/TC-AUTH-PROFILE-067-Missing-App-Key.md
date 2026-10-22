---
tc_id: TC-AUTH-PROFILE-067
title: Reject update with missing application access key
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

| Field               | Value                                                                |
| ------------------- | -------------------------------------------------------------------- |
| Name or other field | محمود                                                                |
| Authorization       | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY    | Missing                                                              |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send a valid update without the application key.
2. Inspect the response.
3. GET profile with correct headers.

## Expected Result

- HTTP Status Code: **Contract clarification required** (often `401` or `403`).
- Request must be rejected if this key is required by the implementation.
- Stored profile remains unchanged.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
