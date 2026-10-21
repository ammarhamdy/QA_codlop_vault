---
tc_id: TC-AUTH-VERIFY-008
title: Verify OTP - Missing Verification Token
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

| otp_code | "1246" |
| -------- | ------ |

# Preconditions

- A valid API access key is available.

# Steps

1. Open `POST /auth/verify-otp` in Postman.
2. Enter `1246` in the `otp` field and remove the `verification_token` field from the request.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `422` (provisional).
- `success` equals `false`.
- Response contains a validation error indicating that the `verification_token` field is required.
- No authentication `data.token` is issued.

# Notes

# Attachments

# Script
