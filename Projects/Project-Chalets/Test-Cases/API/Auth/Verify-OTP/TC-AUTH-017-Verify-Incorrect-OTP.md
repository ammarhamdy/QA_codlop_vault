---
tc_id: TC-AUTH-VERIFY-017
title: Verify OTP - Incorrect OTP
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
| Invalid otp_code   | 1277                                   |

# Preconditions

- User has successfully called `/api/otp/send` and received `verification_token`

# Steps

1. Send POST request to  /auth /verify-otp with invalid OTP: `otp_code="1277"`
2. Observe response status and body

# Expected Result

- HTTP Status Code: 400 or 422
- Response body `success: false`
- Error message: "Invalid OTP code" or similar
- `data.token` is NOT issued
- `data.status` is not updated
- UI clears OTP input field
- Remaining timer countdown is retained

# Notes

# Attachments

# Script
