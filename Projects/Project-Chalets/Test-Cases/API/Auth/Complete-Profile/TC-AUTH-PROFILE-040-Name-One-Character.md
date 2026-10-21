---
tc_id: TC-AUTH-PROFILE-040
title: Complete Customer Profile - Name Below Minimum
priority: High
status: Ready
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - boundary
  - customer-profile
run_result: Pass
---

# Test Data

| Field | Value |
| ----- | ----- |
| name  | م     |

# Preconditions

- A customer with an incomplete profile has a valid bearer token.

# Steps

1. Open POST `/auth/complete-customer-profile` .
2. Set `name` to `م` and send the request.
3. Check the response and stored profile.

# Expected Result

- HTTP Status Code: `422` (provisional).
- `success` equals `false`.
- Response contains a validation error indicating that the `name` field must contain at least 2 characters.
- The customer profile is not completed or updated.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.
- Expected boundary follows PRD (2–60) .

# Attachments

# Script
