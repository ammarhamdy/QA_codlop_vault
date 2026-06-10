---
tc_id: TC-031
title: Verify password reset with a valid token and new strong password
priority: High
status:
  - Ready
type: Functional
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - reset-password
  - functional
run_result:
---

# Test Data
| Field             | Value            |
| ----------------- | ---------------- |
| Registered Email  | reset.user@example.com |
| New Password      | NewStrongP@ss!1  |
| Confirm Password  | NewStrongP@ss!1  |

# Preconditions
- An account exists with email `reset.user@example.com`.
- A valid password reset token/link has been generated and sent to the user.
- The user has clicked the password reset link and is on the reset password page.

# Steps
1. On the password reset page, enter a new, strong password in the "New Password" field (e.g., `NewStrongP@ss!1`).
2. Enter the same password in the "Confirm Password" field.
3. Click the "Reset Password" or "Submit" button.
4. Attempt to log in using the registered email and the new password.

# Expected Result
- The system should successfully reset the password.
- A confirmation message (e.g., "Your password has been successfully reset.") should be displayed.
- The user should be able to log in with the new password.

# Notes
- This test assumes the password complexity rules are enforced elsewhere.

# Attachments
