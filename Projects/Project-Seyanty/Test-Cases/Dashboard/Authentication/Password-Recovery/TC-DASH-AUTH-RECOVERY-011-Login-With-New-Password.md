---
tc_id: TC-DASH-AUTH-RECOVERY-011
title: Login With New Password
priority:
  - High
status:
  - Ready
type:
  - Regression
linked_requirement: REQ-DASH-AUTH-003
tags:
  - test-case
---

# Test Data
| Field    | Value               |
| -------- | ------------------- |
| Email    | user@example.com    |
| Password | NewValidPassword123 |

# Preconditions
- The account password has been successfully changed via password recovery.

# Steps
1. Navigate to the dashboard login page.
2. Enter the email address in the email field.
3. Enter the newly set password in the password field.
4. Submit the login form.
5. Observe the system response.

# Expected Result
- The system authenticates the user successfully using the new password.
- The user is granted access to the dashboard.

# Notes
- Applies to AC-12 — Login After Password Recovery.

# Attachments