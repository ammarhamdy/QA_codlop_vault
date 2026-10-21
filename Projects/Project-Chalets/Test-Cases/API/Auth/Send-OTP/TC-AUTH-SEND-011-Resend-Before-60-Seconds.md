---
tc_id: TC-AUTH-SEND-011
title: Send OTP - Resend Before 60 Seconds
priority: High
status: Ready
type: API
linked_requirement: Customer Login - OTP; POST /auth/send-otp
tags:
  - test-case
  - api
  - auth
  - send-otp
run_result: Pass
---

# Test Data

| Field      | Value     |
| ---------- | --------- |
| phone_code | `966`     |
| phone      | 512345111 |

# Preconditions

- A successful OTP request was sent less than 60 seconds ago.

# Steps

1. Prepare the condition described in Preconditions.
2. Request another OTP for the same number before 60 seconds.
3. Check the HTTP status and response body.
4. Check whether an OTP SMS was received.

# Expected Result

- The request is rejected because the 60-second cooldown has not passed.
- The response indicates the request is too early (expected `429`, pending API error documentation).
- No new OTP SMS is sent.

# Notes

- Exact error status/message is a proposed expectation until the error-response documentation is confirmed.

# Attachments

# Script

