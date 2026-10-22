---
tc_id: TC-AUTH-PROFILE-070
title: Ignore or reject unauthorized extra fields
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
| Scenario         | Ignore or reject unauthorized extra fields                           |
| Endpoint         | `POST /auth/update-customer-profile`                                 |
| Target field     | `role, status`                                                       |
| Input            | `role=admin`, `status=active` alongside valid name                   |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Record user role/status.
2. Submit extra unauthorized keys with a valid name.
3. GET user profile and check permissions.

## Expected Result

- **HTTP Status Code:** `**422 Unprocessable Content**`.
- The API rejects the request because it contains unsupported fields (`role`, `status`).
- The response returns a validation error indicating that the submitted fields are not allowed.
- The customer's role, account status, and permissions remain unchanged.
- No unauthorized fields are updated or saved.

## Notes

- Security validation; do not require one specific status absent contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments



## Script


