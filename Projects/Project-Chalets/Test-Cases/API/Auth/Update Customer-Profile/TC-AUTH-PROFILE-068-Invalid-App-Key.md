---
tc_id: TC-AUTH-PROFILE-068
title: Reject update with invalid application access key
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
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | invalid_key                                                          |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send valid name update with an invalid app key.
2. Inspect response.
3. GET profile with correct headers.

## Expected Result
- HTTP Status Code: `401 Unauthorized` (provisional; verify API contract).
- HTTP status: **Contract clarification required**.
- Request is rejected if the app key is required.
- No profile values change.

## Notes

- Confirm the exact response schema and HTTP status with the implementation API contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

## Script

