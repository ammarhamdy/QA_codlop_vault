---
tc_id: TC-AUTH-PROFILE-072
title: Upload valid profile photo
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
| profile-photo    | A valid allowed file, <= 5120 KB (JPEG, JPG, PNG, WEB)               |
| Authorization    | `Bearer {{valid_token}}` unless intentionally testing authentication |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e                                     |

## Preconditions

- An active customer with a completed profile is logged in. 
- Use `Authorization: Bearer {{valid_token}}` and a valid `X-APP-ACCESS-KEY` unless the test intentionally changes either header.

## Steps

1. Attach a valid file in Postman as type File (not Text).
2. Send the request with valid headers.
3. GET profile and inspect stored file reference if exposed.

## Expected Result

- HTTP `200 OK` (provisional).
- The uploaded file is accepted and associated with the authenticated customer if this field is supported.
- Unrelated profile data remains unchanged.

## Notes

- Postman description: JPG, JPEG, PNG, WEBP; max 5120 KB. PRD does not independently specify these customer-profile file fields.
- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script

