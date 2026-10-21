---
tc_id: TC-AUTH-VERIFY-018
title: Verify OTP - Missing OTP
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
|                    |                                        |

# Preconditions

- A valid, unexpired `verification_token` is available from Send OTP.

# Steps

1. Open `POST /auth/verify-otp` in Postman.
2. Enter a valid `verification_token` and remove the `otp` field from the request.
3. Send the request and check the response

# Expected Result

- HTTP Status Code: `422` (provisional).
- `success` equals `false`.
- Response contains a validation error indicating that the `otp` field is required.
- No authentication `data.token` is issued.

# Notes

# Attachments

# Script
