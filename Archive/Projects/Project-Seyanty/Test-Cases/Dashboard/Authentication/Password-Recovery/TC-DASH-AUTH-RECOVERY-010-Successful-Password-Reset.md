---
tc_id: TC-DASH-AUTH-RECOVERY-010
title: Successful Password Reset
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-003
tags:
  - test-case
---

# Test Data
| Field         | Value               |
| ------------- | ------------------- |
| Email         | user@example.com    |
| New Password  | NewValidPassword123 |

# Preconditions
- A valid, authorized password recovery request exists and has been verified.

# Steps
1. Open the new-password form for the verified recovery request.
2. Enter a valid new password in the password field.
3. Confirm the new password if required.
4. Submit the new password.
5. Observe the system response.

# Expected Result
- The system updates the account password.
- The system confirms that the password has been changed successfully.

# Notes
- Applies to AC-08 — New Password.

# Attachments