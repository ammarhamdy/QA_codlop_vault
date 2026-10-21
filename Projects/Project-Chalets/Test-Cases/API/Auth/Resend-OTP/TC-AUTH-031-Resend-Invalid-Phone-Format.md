---
tc_id: TC-AUTH-RESEND-006
title: Invalid Phone Format
priority: High
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

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | `51234a678` |

# Preconditions

- A valid API access key is available.

# Steps

1. Send `POST /auth/resend-otp` with `phone=51234a678` and `phone_code=966`.
2. Check the response.

# Expected Result

- The request is rejected.
- The response contains a validation error indicating that `phone` must contain digits only.
- No OTP is sent and no usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- This case tests a non-numeric character while keeping the input length at 9.

# Attachments

# Script
