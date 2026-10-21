---
tc_id: TC-AUTH-RESEND-012
title: Hourly Resend Limit
priority: High
status: Ready
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - negative
  - auth
---

# Test Data

| Field | Value |
|---|---|
| phone_code | `966` |
| phone | Controlled Saudi test number |

# Preconditions

- A test number is available with no recent OTP sends.
- Test setup can track successful sends across Send OTP and Resend OTP.

# Steps

1. Request OTPs for the same number, respecting the 60-second cooldown, until 5 successful SMS sends occur within one hour.
2. Attempt one additional resend within that hour.
3. Check the response and SMS delivery.

# Expected Result

- The request exceeding the documented limit of 5 OTP messages per hour is rejected.
- The response indicates that the request limit has been exceeded.
- No additional OTP is sent and no new usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- The requirement states 5 messages/hour per number; confirm whether the backend counts Send OTP and Resend OTP together.

# Attachments

# Script
