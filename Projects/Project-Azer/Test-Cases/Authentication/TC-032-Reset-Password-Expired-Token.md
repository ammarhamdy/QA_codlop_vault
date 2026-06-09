---
tc_id: TC-032
title: Verify password reset fails with an expired token
priority: High
status: Draft
type: Negative
linked_requirement: US-001 # Assuming this is related to authentication system
tags:
  - test-case
  - authentication
  - reset-password
  - negative
run_result: Draft
---

# Test Data
| Field | Value |
| ----- | ----- |
| Email | user.with.expired.token@example.com |
| Token | ExpiredTokenValue |

# Preconditions
- An account exists with the email `user.with.expired.token@example.com`.
- A password reset token was generated, but has since expired according to system policy.
- The user attempts to use the expired token/link.

# Steps
1. Attempt to access the password reset page using an expired token or link.
2. Enter a new password and confirm password.
3. Click the "Reset Password" or "Submit" button.

# Expected Result
- The system should detect the expired token.
- An error message should be displayed (e.g., "Password reset link has expired. Please request a new one.").
- The password should not be reset.
- The user should be prompted to request a new reset link.

# Notes
- This test may require simulating token expiration or using a pre-expired token.

# Attachments
