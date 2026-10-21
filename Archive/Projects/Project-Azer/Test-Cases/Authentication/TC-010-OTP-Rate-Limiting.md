---
tc_id: TC-010
title: Verify OTP Request Rate Limiting
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - security
  - otp
  - rate-limit
run_result: fail
---

# Test Data
| Field       | Value           |
| ----------- | --------------- |
| Phone Number | +19876543210    |
| OTP Request Count | > configured limit (e.g., 5 within 5 minutes) |

# Preconditions
- A client account is registered with phone number `+19876543210`.
- The system has a configured OTP request rate limit (e.g., N requests within T minutes).

# Steps
1. Navigate to the login page and initiate phone number OTP login for `+19876543210`.
2. Repeatedly click the "Send OTP" or "Resend OTP" button more than the configured rate limit within the specified time frame.

# Expected Result
- After exceeding the rate limit, the system should display an error message (e.g., "Too many OTP requests. Please try again later.").
- The system should prevent further OTP requests for a cool-down period.
- No new OTP should be sent after the limit is reached.

# Notes
- Identify the exact rate limit policy (number of requests, time window) for accurate testing.
- This test may require simulating multiple requests quickly, potentially using automation.

# Attachments
