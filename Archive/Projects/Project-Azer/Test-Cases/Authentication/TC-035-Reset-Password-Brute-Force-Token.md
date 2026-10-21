---
tc_id: TC-035
title: Verify protection against brute-force attacks on password reset token input
priority: High
status:
  - Ready
type: Security
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - reset-password
  - security
  - brute-force
run_result:
---

# Test Data
| Field | Value |
| ----- | ----- |
| Email | brute.force.user@example.com |
| Invalid Token Attempts | > configured threshold (e.g., 10) |

# Preconditions
- An account exists with email `brute.force.user@example.com`.
- The system has a configured mechanism to prevent brute-force attacks on the password reset token validation (e.g., rate limiting, CAPTCHA, temporary lockout).

# Steps
1. Initiate a password reset for `brute.force.user@example.com` to get a valid token.
2. Attempt to validate the password reset using a large number of invalid tokens (more than the configured threshold) in rapid succession. This might involve automated tools or manual rapid entry.

# Expected Result
- After exceeding the failed token attempt threshold, the system should activate its protection mechanism.
- This might include:
    - Displaying an error message (e.g., "Too many invalid attempts. Please try again later or request a new reset link.").
    - Presenting a CAPTCHA challenge.
    - Temporarily locking the account or IP address for password reset attempts.
- The password reset should not be successful with invalid tokens.

# Notes
- Determine the exact threshold for failed attempts and the lockout duration or mechanism.

# Attachments
