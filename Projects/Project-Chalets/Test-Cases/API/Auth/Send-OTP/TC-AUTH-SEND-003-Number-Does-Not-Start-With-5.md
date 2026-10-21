---
tc_id: TC-AUTH-SEND-003
title: Send OTP - Number Does Not Start With 5
priority: High
status: Ready
type: API
linked_requirement: Customer Login - OTP
tags:
  - test-case
  - api
  - auth
  - send-otp
run_result: Pass
---

# Test Data

| Field      | Value       |
| ---------- | ----------- |
| phone_code | `966`       |
| phone      | `412345671` |

# Preconditions

- User is on the Login screen

# Steps

1. Send `POST /auth/send-otp` using phone_code :`966` & phone : `412345671` .
2. Check the HTTP status code and response body.

# Expected Result

- HTTP Status Code: `422` (provisional; confirm against the documented error response).
- `success` is not `true`; the response reports invalid or missing input.
- No OTP is sent and no usable verification token is issued.

# Notes

- Invalid phone format triggers backend validation


# Attachments


# Script


