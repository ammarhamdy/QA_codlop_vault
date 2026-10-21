---
tc_id: TC-AUTH-SEND-016
title: Send OTP - OTP Not Exposed in Response
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

| Field      | Value     |
| ---------- | --------- |
| phone_code | `966`     |
| phone      | 578945748 |

# Preconditions

- A valid test phone is available and not rate-limited.

# Steps

1. Send `POST /auth/send-otp` using the test data.
2. Check the HTTP status code and response body.
3. Confirm the OTP value is not present in the response.

# Expected Result

- HTTP Status Code: `200`.
- `success` equals `true`.
- `data.verification_token` is returned.
- The 4-digit OTP value is not included in the API response.

# Notes

# Attachments


# Script

- Manual API test.
