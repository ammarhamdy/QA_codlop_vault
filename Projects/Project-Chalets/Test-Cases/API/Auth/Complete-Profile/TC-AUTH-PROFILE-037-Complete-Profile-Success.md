---
tc_id: TC-AUTH-PROFILE-037
title: Complete Customer Profile - Success
priority: High
status: Ready
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - positive
  - customer-profile
run_result: Pass
---

# Test Data

| Field | Value         |
| ----- | ------------- |
| name  | محمود السالمي |

# Preconditions

- A customer has verified OTP, has an incomplete profile, and has a valid authentication bearer token.

# Steps

1. Open POST `/auth/complete-customer-profile`.
2. Send form-data with `name` = `محمود السالمي ` and the required headers.
3. Check the response status and body.

# Expected Result

- HTTP Status Code: `200`.
- `success` equals `true`.
- Response message indicates that the customer profile was completed successfully.
- `data.customer_profile.name` equals `محمود السالمي`.
- `data.customer_profile.status` equals `active`.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.


# Attachments

# Script
