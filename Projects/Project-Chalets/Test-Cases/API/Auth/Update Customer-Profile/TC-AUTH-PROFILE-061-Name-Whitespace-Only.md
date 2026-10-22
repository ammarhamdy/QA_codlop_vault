---
tc_id: TC-AUTH-PROFILE-061
title: "Validate name: whitespace only"
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

# TC-AUTH-PROFILE-061-Name-Whitespace-Only

## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| Scenario         | Validate name: whitespace only                                       |
| Endpoint         | `POST /auth/update-customer-profile`                                 |
| Target field     | `name`                                                               |
| Input            | `name=   `                                                           |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation    |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Submit the described name input with all other fields omitted.
2. Inspect the response.
3. GET the profile to check whether anything changed.

## Expected Result

- HTTP Status Code: `422 Unprocessable Content` (provisional; verify API contract).
- The API rejects invalid `name` and returns a field-specific validation error.
- No profile data is changed; a follow-up GET returns the original values.

## Notes

- Do not assume optional/required or character-class rules beyond the 2–60 character PRD constraint.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
