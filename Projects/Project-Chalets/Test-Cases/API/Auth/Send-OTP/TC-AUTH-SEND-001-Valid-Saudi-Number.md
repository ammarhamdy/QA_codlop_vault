---
tc_id: TC-AUTH-SEND-001
title: Send OTP - Valid Saudi Number
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
| phone      | `512345652` |
|            |             |


# Preconditions
- User is on the Login screen
- No existing verification token or token has expired
- A valid test number can receive SMS.

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

- Required header: `X-APP-ACCESS-KEY` (use a secure Postman variable).

# Attachments


# Script

