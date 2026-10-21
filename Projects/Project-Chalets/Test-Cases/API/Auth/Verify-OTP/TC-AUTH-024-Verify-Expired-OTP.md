---
tc_id: TC-AUTH-VERIFY-024
title: Verify OTP - Expired OTP
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Verify OTP
tags:
  - test-case
  - api
  - auth
---

# Test Data

| verification_token | "51a03d2e-f961-701a-94fd-a907412d0d54" |
| ------------------ | -------------------------------------- |
| otp_code (Expired) | "9915"                                 |

# Preconditions

- Send OTP request completed successfully.
- More than 300 seconds (5 minutes) have passed since the OTP was issued.

# Steps

1. Send `POST /auth/send-otp` with a valid Saudi phone number.
2. Save the returned `verification_token` and the OTP received via SMS.
3. Wait more than 5 minutes without requesting a new OTP.
4. Send `POST /auth/verify-otp` using the saved token and OTP, then check the response.

# Expected Result

- The API rejects the expired OTP.
- `success` equals `false`.
- Response contains an error indicating that the OTP has expired.
- No authentication `data.token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- OTP expiration time is 300 seconds (5 minutes).

# Attachments

# Script
