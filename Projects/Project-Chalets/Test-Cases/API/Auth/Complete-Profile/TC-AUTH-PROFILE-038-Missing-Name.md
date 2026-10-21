---
tc_id: TC-AUTH-PROFILE-038
title: Complete Customer Profile - Missing Name
priority: High
status: Ready
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - negative
  - customer-profile
run_result: Pass
---

# Test Data

| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions

- A customer with an incomplete profile has a valid bearer token.

# Steps

1. Open POST `/auth/complete-customer-profile` in Postman.
2. Uncheck the `name` field so it is not sent.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `422`. 
- `success` equals `false`.
- Response contains a validation error indicating that the `name` field is required.
- The customer profile is not completed or updated.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.

# Attachments

# Script
