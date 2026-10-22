---
tc_id: TC-AUTH-PROFILE-080
title: Update valid Saudi national ID
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

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| `national_id`    | A valid, unique Saudi national ID, 10 digits beginning with `1`      |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Submit a syntactically valid and checksum-valid national ID.
2. GET profile and confirm its stored value or masked representation.

## Expected Result

- HTTP `200 OK` (provisional) **only if this field is supported for customer profile updates**.
- The saved national ID matches the submitted value (or correct masked representation).
- Unrelated fields remain unchanged.

## Notes

- PRD specifies national ID rules in HOST onboarding, not customer profile. Customer-profile ID validation must be confirmed.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

## Script

