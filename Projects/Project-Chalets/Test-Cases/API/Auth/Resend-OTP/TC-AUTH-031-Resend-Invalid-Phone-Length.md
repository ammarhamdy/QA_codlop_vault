---
tc_id: TC-AUTH-RESEND-031
title: Invalid Phone Length
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
| phone | `51234567` (8 digits), then `5123456789` (10 digits) |

# Preconditions

- A valid API access key is available.

# Steps

1. Send `POST /auth/resend-otp` with the 8-digit phone number.
2. Check the response.
3. Repeat with the 10-digit phone number.

# Expected Result

- Both requests are rejected.
- Each response indicates that `phone` must contain exactly 9 digits.
- No OTP is sent and no usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.

# Attachments

# Script
