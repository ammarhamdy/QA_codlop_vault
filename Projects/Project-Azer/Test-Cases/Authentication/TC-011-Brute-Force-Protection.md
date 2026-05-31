---
tc_id: TC-011
title: Verify Brute Force Protection on Login (Account Lockout/CAPTCHA)
priority: High
status: Draft
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - security
  - brute-force
---

# Test Data
| Field   | Value                  |
| ------- | ---------------------- |
| Email   | target.user@example.com |
| Password | incorrect_password_1, incorrect_password_2, ... |
| Failed Attempts | > configured threshold (e.g., 5) |

# Preconditions
- A client account is registered (e.g., `target.user@example.com`).
- The system has a configured brute force protection mechanism (e.g., account lockout after N failed attempts, CAPTCHA).

# Steps
1. Navigate to the login page.
2. Attempt to log in with the registered email `target.user@example.com` and various incorrect passwords more than the configured failed attempt threshold.

# Expected Result
- After exceeding the failed login attempt threshold, the system should activate its brute force protection.
- This might include: account lockout, mandatory CAPTCHA challenge, or temporary IP block.
- An appropriate error message should be displayed (e.g., "Account locked. Please try again in 15 minutes" or "Please complete the CAPTCHA").
- The user should be unable to log in until the protection mechanism is satisfied or reset.

# Notes
- Determine the exact threshold for failed attempts and the lockout duration.
- This test may require automation to quickly simulate multiple failed attempts.

# Attachments
