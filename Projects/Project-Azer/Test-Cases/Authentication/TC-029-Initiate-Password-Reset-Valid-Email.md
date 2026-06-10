---
tc_id: TC-029
title: Verify initiation of password reset with a valid email
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
| Field | Value |
| ----- | ----- |
| Email | registered.user@example.com |

# Preconditions
- User is on the website's login or password reset page.
- An account exists with the email `registered.user@example.com`.

# Steps
1. Navigate to the login page.
2. Click on the "Forgot Password?" link.
3. Enter a valid registered Email Address (e.g., `registered.user@example.com`).
4. Click the "Send Reset Link" or "Submit" button.

# Expected Result
- The system should display a confirmation message (e.g., "If an account exists for this email, a password reset link has been sent.").
- A password reset email should be sent to `registered.user@example.com`.

# Notes
- This test verifies the first step of the password reset flow.

# Attachments
