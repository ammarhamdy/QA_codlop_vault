---
tc_id: TC-AUTH-SEND-017
title: Send OTP - Resend After 60 Seconds
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

| Field      | Value          |
| ---------- | -------------- |
| Method     | POST           |
| Endpoint   | /auth/send-otp |
| Body Type  | form-data      |
| phone_code | `966`          |
| phone      | 512478452      |

# Preconditions

- A successful OTP request was sent at least 60 seconds ago; other limits are not reached.

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


