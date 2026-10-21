---
tc_id: TC-AUTH-VERIFY-025
title: Verify OTP - Wrong Attempts Lock
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
| otp_code           | "1242"                                 |

# Preconditions

- A valid, unexpired verification token is available.
- The test phone number is not currently locked.

# Steps

1. Send `POST /auth/verify-otp` with a valid `verification_token` and an incorrect OTP.
2. Repeat the request with incorrect OTP values until 5 failed attempts are reached.
3. Attempt verification again during the lock period using a correct OTP.
4. Check the response status and body.

# Expected Result

- All 5 incorrect OTP attempts are rejected.
- The phone number is locked for 15 minutes after 5 failed attempts.
- Verification is rejected during the lock period, even with the correct OTP.
- No authentication `data.token` is issued during the lock period.
- Response indicates that the attempt limit has been exceeded or the number is temporarily locked.

# Notes

# Attachments

# Script
