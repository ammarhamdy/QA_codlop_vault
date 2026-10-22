---
tc_id: TC-AUTH-PROFILE-078
title: Preserve omitted profile fields
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

| Field | Value |
|---|---|
| Scenario | Preserve omitted profile fields |
| Endpoint | `POST /auth/update-customer-profile` |
| Target field | `name` |
| Input | Only `name=أحمد خالد`; existing phone, ID, photo |
| Authorization | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | Valid key unless intentionally testing application-key validation |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Save complete original profile.
2. Update name only.
3. GET profile.

## Expected Result

- HTTP Status Code: `200 OK`.
- `success` is `true` if this is the documented response schema.
- The saved `name` equals `أحمد خالد` when retrieved again using `GET /auth/customer-profile`.
- All other profile fields remain unchanged.

## Notes

- Explicitly verify phone, national ID, attachment and photo stay unchanged.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments



## Script

