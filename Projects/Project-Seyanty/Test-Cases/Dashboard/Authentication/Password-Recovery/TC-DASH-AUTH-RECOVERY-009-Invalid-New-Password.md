---
tc_id: TC-DASH-AUTH-RECOVERY-009
title: Invalid New Password
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
| Field         | Value                 |
| ------------- | --------------------- |
| New Password  | weak (does not satisfy policy) |

# Preconditions
- A valid, authorized password recovery request exists and has been verified.

# Steps
1. Open the new-password form for a verified recovery request.
2. Enter a new password that does not satisfy the configured password policy.
3. Submit the new password.
4. Observe the system response.

# Expected Result
- The system prevents the password change.
- The user is informed of the applicable password requirements.

# Notes
- Applies to AC-09 — Password Validation.

# Attachments