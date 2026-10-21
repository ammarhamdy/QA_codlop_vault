---
tc_id: TC-AUTH-SEND-013
title: Send OTP - Hourly Limit Sixth Message
priority: High
status: Ready
type: API
linked_requirement: Customer Login - OTP
tags:
  - test-case
  - api
  - auth
  - send-otp
run_result:
---

# Test Data

| Field      | Value     |
| ---------- | --------- |
| phone_code | `966`     |
| phone      | 512475412 |

# Preconditions

- Five OTP messages were successfully requested for this number within the last hour; the 60-second cooldown has passed.

# Steps

1. Prepare the condition described in Preconditions.
2. Request the sixth OTP within the same hour.
3. Check the HTTP status and response body.
4. Check whether an OTP SMS was received.

# Expected Result

- The request is rejected because the OTP sending limit has been reached.
- HTTP Status Code: `429` .
- No additional OTP is sent.

# Notes

# Attachments

# Script

