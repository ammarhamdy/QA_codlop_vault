---
tc_id: TC-AUTH-PROFILE-041
title: Complete Customer Profile - Minimum Valid Name
priority: High
status: Ready
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - boundary
  - customer-profile
run_result: Fail
---

# Test Data

| Field | Value |
| ----- | ----- |
| name  | مي    |

# Preconditions

- A customer with an incomplete profile has a valid bearer token.

# Steps

1. Open POST `/auth/complete-customer-profile` in Postman.
2. Set `name` to `مي` (exactly 2 characters).
3. Send the request and check the response.

# Expected Result
- HTTP Status Code: `200`.
- `success` equals `true`.
- The customer profile is completed successfully.
- `data.customer_profile.name` equals `"مي"`.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.

# Attachments

# Script
