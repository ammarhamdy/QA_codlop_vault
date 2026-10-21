---
tc_id: TC-033
title: Verify password reset fails if new password and confirmation do not match
priority: High
status:
  - Ready
type: Negative
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - reset-password
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field             | Value            |
| ----------------- | ---------------- |
| Registered Email  | mismatch.user@example.com |
| New Password      | SecureP@ss1      |
| Confirm Password  | DifferentP@ss2   |

# Preconditions
- An account exists with email `mismatch.user@example.com`.
- The user is on the password reset page with a valid token.

# Steps
1. Enter a new password in the "New Password" field (e.g., `SecureP@ss1`).
2. Enter a different password in the "Confirm Password" field (e.g., `DifferentP@ss2`).
3. Click the "Reset Password" or "Submit" button.

# Expected Result
- The system should display a validation error message indicating that the passwords do not match (e.g., "Passwords do not match.").
- The password reset process should be blocked.

# Notes
- This test ensures that the password confirmation field is validated correctly.

# Attachments
