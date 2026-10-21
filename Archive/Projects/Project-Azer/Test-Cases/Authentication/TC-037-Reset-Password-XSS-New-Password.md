---
tc_id: TC-037
title: Verify XSS protection in the new password field during reset
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
  - xss
run_result:
---

# Test Data
| Field | Value |
| ----- | ----- |
| Registered Email | xss.reset.user@example.com |
| New Password | <script>alert('XSS')</script> |
| Confirm Password | <script>alert('XSS')</script> |

# Preconditions
- An account exists with email `xss.reset.user@example.com`.
- The user is on the password reset page with a valid token.
- The system is expected to sanitize or escape inputs to prevent XSS.

# Steps
1. Enter an XSS payload (e.g., `<script>alert('XSS')</script>`) into the "New Password" field.
2. Enter the same XSS payload into the "Confirm Password" field.
3. Click the "Reset Password" or "Submit" button.
4. Navigate to a page that might display the password (e.g., user profile, if allowed) or inspect network responses.

# Expected Result
- The application should sanitize or escape the input, preventing script execution.
- No alert box should appear when the password is processed or displayed.
- The password should either be rejected with a validation error (if sanitization fails) or stored/processed safely without executing the script.

# Notes
- This ensures that malicious scripts are not executed when users reset their passwords.

# Attachments
