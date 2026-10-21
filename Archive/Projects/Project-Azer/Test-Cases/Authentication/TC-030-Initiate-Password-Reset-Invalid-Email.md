---
tc_id: TC-030
title: Verify password reset initiation fails for invalid or unregistered email
priority: High
status:
  - Ready
type: Negative
linked_requirement: US-001
tags:
  - test-case
  - authentication
  - reset-password
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Email | invalid-or-unregistered@example.com |

# Preconditions
- User is on the website's login or password reset page.

# Steps
1. Navigate to the login page.
2. Click on the "Forgot Password?" link.
3. Enter an invalid or unregistered Email Address (e.g., `invalid-or-unregistered@example.com`).
4. Click the "Send Reset Link" or "Submit" button.

# Expected Result
- The system should display an error message indicating that the email address is not found or invalid (e.g., "No account found with that email address.").
- No password reset email should be sent.

# Notes
- This prevents enumeration attacks by confirming an email does not exist without revealing too much information.

# Attachments
