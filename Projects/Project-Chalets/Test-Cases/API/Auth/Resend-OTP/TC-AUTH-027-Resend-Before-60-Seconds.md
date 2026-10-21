---
tc_id: TC-AUTH-RESEND-027
title: Resend Before 60 Seconds
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - negative
  - auth
run_result: Pass
---

# Test Data

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | `512345678` |

# Preconditions

- A successful Send OTP or Resend OTP request has just been made for this phone number.
- Less than 60 seconds have elapsed.

# Steps

1. Send `POST /auth/resend-otp` with the same phone number before the 60-second cooldown ends.
2. Check the response status and body.

# Expected Result

- The resend request is rejected because the cooldown has not expired.
- The response indicates that the user must wait before requesting another OTP.
- No new OTP is sent and no new usable `verification_token` is issued.

# Notes

- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- Confirm the precise error code and remaining-seconds response against the API contract.

# Attachments

# Script
