---
tc_id: TC-AUTH-VERIFY-023
title: Verify OTP - Invalid Verification Token
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
| verification_token         | "01a03d2e-f961-701a-94fd-a945412d0d54" |
| -------------------------- | -------------------------------------- |
| invalid verification_token | "i4a03d2e-f961-701a-94fd-a945412d0d54" |
| otp_code                   | "6472"                                 |

# Preconditions

- A valid API access key is available.
- A valid, unexpired OTP is available from Send OTP.

# Steps

1. Open `POST /auth/verify-otp` in Postman.
2. Enter "i4a03d2e-f961-701a-94fd-a945412d0d54" in the `verification_token` field and a valid OTP in the `otp` field.
3. Send the request and check the response.

# Expected Result

- The API rejects the invalid `verification_token`.
- `success` equals `false`.
- Response contains an error indicating that the `verification_token` is invalid.
- No authentication `data.token` is issued.

# Notes

# Attachments

# Script
