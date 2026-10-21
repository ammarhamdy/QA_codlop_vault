---
tc_id: TC-AUTH-SEND-006
title: Send OTP - Phone Is Missing
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

| Field      | Value            |
| ---------- | ---------------- |
| phone_code | `966`            |
| phone      | `<remove field>` |
|            |                  |

# Preconditions

- None.

# Steps

1. Send `POST /auth/send-otp` using the test data.
2. Check the HTTP status code and response body.

# Expected Result

- HTTP Status Code: `422 Unprocessable Entity`.
- `success` equals `false`.
- Response contains a validation error indicating that the `phone` field is required.
- No OTP is sent.
- No `verification_token` is generated.

# Notes



# Attachments



# Script

