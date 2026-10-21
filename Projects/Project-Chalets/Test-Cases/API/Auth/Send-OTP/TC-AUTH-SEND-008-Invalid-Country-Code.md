---
tc_id: TC-AUTH-SEND-008
title: Send OTP - Invalid Country Code
priority: Medium
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

| Field      | Value       |
| ---------- | ----------- |
| phone_code | +20         |
| phone      | `512345671` |

# Preconditions

- User is on the Login screen.

# Steps

1. Send `POST /auth/send-otp` using phone_code :`+20 & phone : 512345671`.
2. Check the HTTP status code and response body.

# Expected Result

- HTTP Status Code: 422
- Response body `success: false`
- Validation error for `phone_code` field: message indicating invalid phone code format
- No `verification_token` returned
- Client displays inline error without screen transition

# Notes



# Attachments

- Add execution evidence later.

# Script

- Manual API test.
