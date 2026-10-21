---
tc_id: TC-AUTH-RESEND-011
title: Old OTP Invalidated After Resend
priority: High
status: Ready
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

| Field      | Value       |
| ---------- | ----------- |
| phone_code | `966`       |
| phone      | `512345678` |
| old_otp    | 5781        |
| new_otp    | 9451        |

# Preconditions

- A valid initial OTP and its `verification_token` are available.
- The resend cooldown has expired.

# Steps

1. Request `POST /auth/resend-otp` for the same phone number and save the new `verification_token` and OTP.
2. Attempt `POST /auth/verify-otp` using the original OTP and its original verification token.
3. Check that verification fails.
4. Verify the new OTP using its corresponding new verification token while it is valid.

# Expected Result

- The original OTP cannot authenticate after a new OTP is issued.
- No authentication `data.token` is issued for the old OTP.
- The new OTP can be verified successfully when valid and correctly paired with its verification token.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- This is a cross-endpoint integration test. Do not reuse the old verification token with the new OTP.

# Attachments

# Script
