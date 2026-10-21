---
tc_id: TC-AUTH-RESEND-003
title: Resend After 60 Seconds
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - positive
  - auth
run_result: Pass
---

# Test Data

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | `512345678` |

# Preconditions

- A successful OTP request was made for this phone number.
- At least 60 seconds have elapsed and rate limits have not been reached.

# Steps

1. Send `POST /auth/resend-otp` with the same valid phone number.
2. Check the response status and body.

# Expected Result

- HTTP Status Code: `200`.
- `success` equals `true`.
- A non-empty `data.verification_token` is returned.
- `data.expires_in_seconds` equals `300`.
- `data.resend_available_in_seconds` equals `60`.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- This case specifically verifies the 60-second boundary; case 001 verifies the full successful response.
# Attachments

# Script
