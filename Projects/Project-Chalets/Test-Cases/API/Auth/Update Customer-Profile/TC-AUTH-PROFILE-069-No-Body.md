---
tc_id: TC-AUTH-PROFILE-069
title: Submit an empty update request
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
| Scenario         | Submit an empty update request                                       |
| Endpoint         | `POST /auth/update-customer-profile`                                 |
| Input            | No form-data fields                                                  |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

# Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Send the update endpoint with empty form-data.
2. Inspect response.
3. GET profile.

## Expected Result

- **HTTP Status Code:** `**422 Unprocessable Content**`.
- The API rejects the request because no profile data is provided for updating.
- The response returns a validation error indicating that at least one updatable field is required.
- No customer profile information is modified.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
