---
tc_id: TC-AUTH-SEND-005
title: Send OTP - Phone Has 10 Digits
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

| Field      | Value        |
| ---------- | ------------ |
| phone_code | `966`        |
| phone      | `5123456511` |

# Preconditions

- None.

# Steps

1. Send `POST /auth/send-otp` using using phone_code :`966` & phone : `5123456511`
2. Check the HTTP status code and response body.

# Expected Result

- HTTP Status Code: `422` .
- `success` is not `true`; the response reports invalid or missing input.
- No OTP is sent and no usable verification token is issued.

# Notes

- Invalid phone format triggers backend validation

# Attachments

# Script

- Manual API test.
