---
tc_id: TC-AUTH-RESEND-030
title: Empty Phone
priority: Medium
status: Draft
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - negative
  - auth
run_result: Pass
---

# Test Data

| Field      | Value    |
| ---------- | -------- |
| phone_code | `966`    |
| phone      |  (empty) |

# Preconditions

- A valid API access key is available.

# Steps

1. Keep the `phone` form-data field enabled but leave its value empty.
2. Send `POST /auth/resend-otp` with `phone_code=966`.
3. Check the response.

# Expected Result

- The request is rejected.
- The response contains a validation error indicating that `phone` cannot be empty.
- No OTP is sent and no usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.

# Attachments

# Script
