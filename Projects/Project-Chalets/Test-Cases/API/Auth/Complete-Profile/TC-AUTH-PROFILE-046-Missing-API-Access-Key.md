---
tc_id: TC-AUTH-PROFILE-011
title: Complete Customer Profile - Missing API Access Key
priority: High
status: Draft
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

- A customer with an incomplete profile has a valid bearer token.

# Steps

1. Open POST `/auth/complete-customer-profile`.
2. Keep the bearer token and valid name, but remove `X-APP-ACCESS-KEY`.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: 401 Unauthorized .
- Request is rejected due to the missing `X-APP-ACCESS-KEY` header.
- Response contains an error indicating that the application access key is required.
- The customer profile is not completed or updated.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.
- Exact status and error response require confirmation; prior invalid-key example returned 401, but missing-key response is unverified.

# Attachments

# Script
