---
tc_id: TC-AUTH-PROFILE-008
title: Complete Customer Profile - Missing Authorization
priority: High
status: Ready
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - security
  - customer-profile
run_result: Pass
---

# Test Data

| Field | Value         |
| ----- | ------------- |
| name  | محمود السالمي |

# Preconditions

- An incomplete-profile customer exists; a valid API access key is available.

# Steps

1. Open POST `/auth/complete-customer-profile` .
2. Set a valid `name` and remove the `Authorization` header.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `401 Unauthorized` (provisional).
- `success` equals `false`.
- Response contains an authentication error indicating that the Bearer Token is missing or required.
- The customer profile is not completed or updated.
- No customer data is disclosed in the response.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.


# Attachments

# Script
