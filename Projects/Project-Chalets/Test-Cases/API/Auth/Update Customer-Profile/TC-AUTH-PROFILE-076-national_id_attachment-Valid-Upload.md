---
tc_id: TC-AUTH-PROFILE-076
title: Upload valid national id attachment
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

| Field                    | Value                                                                |
| ------------------------ | -------------------------------------------------------------------- |
| `national_id_attachment` | A valid allowed file, < 10240 KB                                     |
| Authorization            | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY         | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. Save the original profile using the customer-profile GET endpoint before testing. Use isolated test data and restore modified values after execution.
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Attach a valid file in Postman as type File (not Text).
2. Send the request with valid headers.
3. observe the response.

## Expected Result

- HTTP `200 OK` (provisional).
- The uploaded file is accepted and associated with the authenticated customer if this field is supported.
- Unrelated profile data remains unchanged.

## Notes

- national_id_attachment : PDF, JPG, JPEG, PNG; max 10240 KB. PRD does not independently specify these customer-profile file fields.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script
