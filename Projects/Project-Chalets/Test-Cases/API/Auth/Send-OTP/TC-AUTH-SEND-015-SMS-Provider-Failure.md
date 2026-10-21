---
tc_id: TC-AUTH-SEND-015
title: Send OTP - SMS Provider Failure
priority: Medium
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
| phone      | 512451211 |

# Preconditions

- SMS provider failure is simulated .
- A valid Saudi test phone number is available.

# Steps

1. Prepare the condition described in Preconditions.
2. Simulate SMS provider failure and send OTP.
3. Check the HTTP status and response body.
4. Check whether an OTP SMS was received.

# Expected Result

- The API does not report successful SMS delivery when sending fails.
- A clear provider-unavailable error is returned if all configured providers fail.
- The failure does not expose the OTP or an internal exception.

# Notes

- Needs a controlled failure simulation; do not interrupt production SMS service.

# Attachments

# Script

