---
tc_id: TC-AUTH-SEND-002
title: Send OTP - Existing Customer Number
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

| Field      | Value                                   |
| ---------- | --------------------------------------- |
| phone_code | `966`                                   |
| phone      | `<existing customer number>``512345652` |
|            |                                         |

# Preconditions

- An active customer account exists for this number.

# Steps

1. Send `POST /auth/send-otp` using the test data.
2. Check the HTTP status code and response body.
3. Check whether an OTP SMS was received.

# Expected Result

- HTTP Status Code: `200`.
- `success` equals `true`.
- `message` equals `تم إرسال رمز التحقق بنجاح` when `LANG = ar`.
- `data.verification_token` is returned and is not empty.
- `data.expires_in_seconds` equals `300`.
- `data.resend_available_in_seconds` equals `60`.
- A 4-digit OTP is sent to the test number.

# Notes
# Attachments


# Script

- Manual API test.
