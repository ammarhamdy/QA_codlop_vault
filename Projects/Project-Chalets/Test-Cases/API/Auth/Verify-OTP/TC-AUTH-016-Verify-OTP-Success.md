---
tc_id: TC-AUTH-VERIFY-016
title: Verify OTP - Success Incomplete Profile
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Verify OTP
tags:
  - test-case
  - api
  - auth
run_result: Pass
---

# Test Data

| verification_token | "01a03d2e-f961-701a-94fd-a945412d0d54" |
| ------------------ | -------------------------------------- |
| otp_code           | "1235"                                 |

# Preconditions

- Incomplete customer profile; unexpired OTP

# Steps

1. Send `POST /auth/verify-otp` with the specified form-data.
2. Check the HTTP status and response body.

# Expected Result

- HTTP Status Code: `206`.
- `success` equals `true`.
- `data.token` is returned and is not empty.
- `data.user` contains the authenticated user's information.
- Response message indicates successful verification and requests profile completion.
- User status is `active`.
# Notes

# Attachments

# Script
