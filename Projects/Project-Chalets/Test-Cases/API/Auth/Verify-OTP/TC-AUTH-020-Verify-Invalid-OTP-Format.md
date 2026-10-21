---
tc_id: TC-AUTH-VERIFY-020
title: Verify OTP - Invalid OTP Format
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Verify OTP
tags:
  - test-case
  - api
  - auth
run_result: Fail
---

# Test Data

| verification_token | "01a03d2e-f961-701a-94fd-a945412d0d54" |
| ------------------ | -------------------------------------- |
| otp_code           | "12a5"                                 |

# Preconditions

- A valid, unexpired `verification_token` is available from Send OTP.

# Steps

1. Open `POST /auth/verify-otp`.
2. Enter a valid `verification_token` and set `otp` to `12a4`.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `422` (provisional).
- `success` equals `false`.
- Response contains a validation error indicating that the `otp` field must contain digits only.
- No authentication `data.token` is issued.

# Notes

# Attachments

# Script
