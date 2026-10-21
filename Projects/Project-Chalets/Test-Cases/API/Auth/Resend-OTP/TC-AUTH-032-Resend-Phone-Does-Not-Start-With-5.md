---
tc_id: TC-AUTH-RESEND-032
title: Phone Does Not Start With 5
priority: Medium
status: Ready
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
| phone | `612345678` |

# Preconditions

- A valid API access key is available.

# Steps

1. Send `POST /auth/resend-otp` with `phone_code=966` and `phone=612345678`.
2. Check the response.

# Expected Result

- The request is rejected.
- The response contains a validation error indicating that the Saudi mobile number must start with `5`.
- No OTP is sent and no usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.

# Attachments

# Script
