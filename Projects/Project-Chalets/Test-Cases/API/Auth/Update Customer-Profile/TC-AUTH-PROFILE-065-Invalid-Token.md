---
tc_id: TC-AUTH-PROFILE-065
title: Reject profile update with invalid token
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

# TC-AUTH-PROFILE-071-Invalid-Token

## Test Data

| Field            | Value                            |
| ---------------- | -------------------------------- |
| Name             | سلمان المطيري                    |
| Authorization    | Invalid Bearer Token             |
| X-APP-ACCESS-KEY | b9e8e7192a04a7a7c56065d7f9e4ea3e |


## Preconditions

- An active customer account exists with a completed profile.
- The Update Customer Profile endpoint requires Bearer Token authentication.
- A valid `X-APP-ACCESS-KEY` is available.

## Steps

1. Verify a valid session can access the profile.
2. Submit an otherwise valid update using the specified authorization state.
3. GET the profile using the original valid token.

## Expected Result

- HTTP Status Code: `401 Unauthorized` (provisional; verify API contract).
- The update request is rejected as unauthenticated.
- No customer profile values are modified.

## Notes

- Status codes explicitly marked provisional are **not** stated in the PRD; record actual observed response during execution.

## Attachments


## Script

