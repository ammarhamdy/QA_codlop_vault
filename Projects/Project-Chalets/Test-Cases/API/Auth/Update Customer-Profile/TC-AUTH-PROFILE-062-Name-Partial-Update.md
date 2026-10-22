---
tc_id: TC-AUTH-PROFILE-062
title: Update only name without optional fields
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

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Input            | محمد                                                                 |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. GET and record existing phone, national ID and photo.
2. Submit only the name field.
3. GET profile again.

## Expected Result

- HTTP Status Code: `200 OK`.
- `success` is `true` if this is the documented response schema.
- The saved `name` equals `سلمان` when retrieved again using `GET /auth/customer-profile`.
- All other profile fields remain unchanged.

## Notes

- Check whether omission preserves fields; contract should clarify PATCH-like semantics for this POST.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script

