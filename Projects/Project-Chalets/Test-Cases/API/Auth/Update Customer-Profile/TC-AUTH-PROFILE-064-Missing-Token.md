---
tc_id: TC-AUTH-PROFILE-064
title: Reject profile update with missing token
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

| Field            | Value                            |
| ---------------- | -------------------------------- |
| Name             | سلمان المطيري                    |
| Authorization    | No Auth — No Bearer Token        |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e |

## Preconditions

- An active customer account exists with a completed profile.
- The Update Customer Profile endpoint requires Bearer Token authentication.
- A valid `X-APP-ACCESS-KEY` is available.

## Steps

1. Request /auth/update-customer-profile` in Postman.
2. Select **No Auth** from the Authorization tab.    
3. Include a valid `X-APP-ACCESS-KEY` header.
4. Send the request.
5. Check the HTTP status code and response body.

## Expected Result

- HTTP Status Code: `401 Unauthorized` (expected; pending API contract confirmation).
- The request is rejected because the Bearer Token is missing.
- The API returns an authentication error.
- The customer profile is not updated.

## Notes

- No Bearer Token should be sent with this request.
- The exact error response must be confirmed against the API contract.
## Attachments

- Pending execution.

## Script

- Not automated.
