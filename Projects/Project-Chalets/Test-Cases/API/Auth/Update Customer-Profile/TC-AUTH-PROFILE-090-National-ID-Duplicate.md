---
tc_id: TC-AUTH-PROFILE-090
title: "National ID validation — duplicate"
priority: Medium
status: Ready
type: API
linked_requirement: "PRD Section 17 — Account and Phone Change"
tags:
  - test-case
  - api
  - customer-profile
  - validation
run_result: Not Run
---

# TC-AUTH-PROFILE-090-National-ID-Duplicate

## Test Data

| Field | Value |
|---|---|
| Scenario | National ID validation — duplicate |
| Endpoint | `POST /auth/update-customer-profile` |
| Target field | `national_id` |
| Input | National ID already associated with another account |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Prepare the specified ID input.
2. Submit it.
3. GET profile and check persistence.

## Expected Result

- HTTP status: **Contract clarification required** for customer profile.
- If the customer-profile API enforces this rule, invalid input is rejected with a field error.
- An invalid/unauthorized ID must not overwrite a previously valid stored value.

## Notes

- Rules are not established for customer profile by PRD; do not classify as confirmed defect without contract.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
