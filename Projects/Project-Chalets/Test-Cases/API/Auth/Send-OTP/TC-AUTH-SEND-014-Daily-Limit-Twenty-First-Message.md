---
tc_id: TC-AUTH-SEND-019
title: Send OTP - Daily Limit Twenty-First Message
priority: High
status: Ready
type: API
linked_requirement: Customer Login - OTP
tags:
  - test-case
  - api
  - auth
  - send-otp
---

# Test Data

| Field      | Value     |
| ---------- | --------- |
| phone_code | `966`     |
| phone      | 512478512 |

# Preconditions

- Twenty OTP messages were successfully requested for this number within the daily limit window; hourly limit and cooldown are not blocking the test.

# Steps

1. Prepare the condition described in Preconditions.
2. Request the twenty-first OTP within the same day.
3. Check the HTTP status and response body.
4. Check whether an OTP SMS was received.

# Expected Result

- The request is rejected because the OTP sending limit has been reached.
- HTTP Status Code: `429` (provisional; confirm against API error documentation).
- No additional OTP is sent.

# Notes

# Attachments

# Script
