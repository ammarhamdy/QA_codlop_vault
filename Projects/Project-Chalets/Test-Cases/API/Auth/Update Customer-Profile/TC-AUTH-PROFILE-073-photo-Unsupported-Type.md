---
tc_id: TC-AUTH-PROFILE-073
title: Reject unsupported profile photo file type
priority: Medium
status: Ready
type: API
linked_requirement: PRD Section 17 — Account and Phone Change
tags:
  - test-case
  - api
  - customer-profile
  - negative
run_result: pass
---

## Test Data

| Field            | Value                                                                |
| ---------------- | -------------------------------------------------------------------- |
| profile-photo    | Svg file                                                             |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |


## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Attach unsupported file type.
2. Submit request.
3. observe the response.

## Expected Result

- HTTP Status Code: `422 Unprocessable Content` (provisional; verify API contract).
- The API rejects invalid `photo` and returns a field-specific validation error.
- No profile data is changed; a follow-up GET returns the original values.

## Notes

- Allowed types per Postman: JPG, JPEG, PNG, WEBP; not independently confirmed in PRD.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments

- Pending execution.

## Script

- Not automated.
