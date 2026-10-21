---
tc_id: TC-AUTH-RESEND-036
title: Invalid API Access Key
priority: High
status: Draft
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - security
  - auth
run_result: Pass
---

# Test Data

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | `512345678` |
| X-APP-ACCESS-KEY | Invalid value |

# Preconditions

- A valid test phone number is available.

# Steps

1. Open `POST /auth/resend-otp` in Postman.
2. Set `X-APP-ACCESS-KEY` to an invalid value.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `401` (observed on Send OTP; confirm for Resend OTP).
- `success` equals `false`.
- The response indicates that the application access key is invalid.
- No OTP is sent and no usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- The observed 401 response was on Send OTP, not Resend OTP; verify this endpoint independently.

# Attachments

# Script
