---
tc_id: TC-AUTH-SEND-009
title: Send OTP - Phone Contains Letters
priority: Medium
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
| phone      | `51ABC5671` |

# Preconditions

- User is on the Login screen.

# Steps

1. Send `POST /auth/send-otp` using phone_code :966 & phone : 51ABC5671`.
2. Check the HTTP status code and response body.

# Expected Result

- HTTP Status Code: `422 Unprocessable Entity`.
- `success` equals `false`.
- Response contains a validation error indicating that the `phone` field must contain numbers only.
- No OTP is sent.
- No `verification_token` is generated.

# Notes

# Attachments

# Script

