---
tc_id: TC-034
title: Verify new password meets complexity requirements during reset
priority: High
status: Draft
type: Functional
linked_requirement: US-001 # Assuming this is related to authentication system
tags:
  - test-case
  - authentication
  - reset-password
  - validation
  - security
run_result: Draft
---

# Test Data
| Field             | Value            |
| ----------------- | ---------------- |
| Registered Email  | weak.pass.user@example.com |
| Weak Password     | password123      |
| New Password      | ComplexP@ss!99   |
| Confirm Password  | ComplexP@ss!99   |

# Preconditions
- An account exists with email `weak.pass.user@example.com`.
- The system enforces password complexity rules (e.g., minimum length, uppercase, lowercase, number, special character).
- The user is on the password reset page with a valid token.

# Steps
1. Enter a weak password in the "New Password" field (e.g., `password123`).
2. Enter the same weak password in the "Confirm Password" field.
3. Click the "Reset Password" or "Submit" button.
4. Verify that a validation error message regarding password strength is displayed.
5. Enter a strong password that meets complexity requirements in "New Password" (e.g., `ComplexP@ss!99`).
6. Enter the same strong password in "Confirm Password".
7. Click "Reset Password" or "Submit".

# Expected Result
- In steps 1-4, the system rejects the weak password and prompts the user to follow complexity rules.
- In steps 5-7, the password reset is successful with the strong password.

# Notes
- Ensure the password complexity rules are clearly defined and tested against.

# Attachments
