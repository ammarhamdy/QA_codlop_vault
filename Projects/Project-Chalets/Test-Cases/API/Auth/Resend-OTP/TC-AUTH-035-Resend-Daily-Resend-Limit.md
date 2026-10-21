---
tc_id: TC-AUTH-RESEND-013
title: Daily Resend Limit
priority: Medium
status: Draft
type: API
linked_requirement: Customer Login - Resend OTP
tags:
  - test-case
  - api
  - negative
  - auth
---

# Test Data

| Field      | Value     |
| ---------- | --------- |
| phone_code | `966`     |
| phone      | 514224421 |

# Preconditions

- A test number or QA fixture can be prepared with 20 successful OTP messages within the applicable 24-hour/day window.
- The test environment can distinguish the daily limit from the hourly limit.

# Steps

1. Attempt `POST /auth/resend-otp` after the daily count reaches 20.
2. Check the response and SMS delivery.

# Expected Result

- The request exceeding the documented limit of 20 OTP messages per day is rejected.
- The response indicates that the daily request limit has been exceeded.
- No additional OTP is sent and no new usable `verification_token` is issued.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- Exact HTTP status and error response schema for negative cases require API contract confirmation.
- Requires a controlled fixture; confirm daily-window definition and avoid triggering the hourly limit first.

# Attachments

# Script
