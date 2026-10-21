---
tc_id: TC-AUTH-VERIFY-021
title: Verify OTP - Incorrect OTP Length
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
| otp_code           | "123"/"123456"                         |

# Preconditions

- A valid, unexpired `verification_token` is available from Send OTP.

# Steps

1. Open `POST /auth/verify-otp` in Postman.
2. Enter a valid `verification_token` and set `otp` to `123`.
3. Send the request and check the response.
4. Repeat with `otp` set to `123456 using a valid, unexpired verification challenge.

# Expected Result

- HTTP Status Code: `422` (provisional).
- `success` equals `false`.
- Response contains a validation error indicating that the `otp` field must contain exactly 4 digits.
- No authentication `data.token` is issued.

# Notes

# Attachments

# Script
