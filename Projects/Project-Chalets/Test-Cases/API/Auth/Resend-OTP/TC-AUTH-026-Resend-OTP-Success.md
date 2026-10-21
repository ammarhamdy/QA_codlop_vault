---
tc_id: TC-AUTH-RESEND-026
title: Resend OTP Success
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - positive
  - auth
run_result: Pass
---

# Test Data

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | `512345678` (valid test number) |

# Preconditions

- A Send OTP request succeeded for the same phone number.
- At least 60 seconds have passed since the last successful OTP send.
- The phone number has not exceeded its rate limits.

# Steps

1. Open `POST /auth/resend-otp` in Postman.
2. Enter `phone_code=966` and the same valid `phone` used for Send OTP.
3. Send the request and check the response.

# Expected Result

- HTTP Status Code: `200`.
- `success` equals `true`.
- `message` equals `"تم إرسال رمز التحقق بنجاح"` when `LANG=ar`.
- `data.verification_token` is returned and is not empty.
- `data.expires_in_seconds` equals `300`.
- `data.resend_available_in_seconds` equals `60`.
- A fresh 4-digit OTP is sent to the test phone (verify delivery separately).

# Notes

- Use a controlled phone/SMS inbox to confirm receipt; HTTP 200 alone does not prove SMS delivery.

# Attachments

# Script
