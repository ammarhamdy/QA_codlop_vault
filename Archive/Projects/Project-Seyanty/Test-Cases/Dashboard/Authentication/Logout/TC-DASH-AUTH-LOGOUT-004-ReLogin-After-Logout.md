---
tc_id: TC-DASH-AUTH-LOGOUT-004
title: Re-Login After Logout
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-002
tags:
  - test-case
---

# Test Data
| Field    | Value            |
| -------- | ---------------- |
| Email    | user@example.com |
| Password | ValidPassword123 |

# Preconditions
- User has successfully logged out (session terminated).

# Steps
1. Log in and log out successfully.
2. Ensure the user is on the dashboard login page.
3. Enter valid credentials in the login form.
4. Submit the login form.
5. Observe the system response.

# Expected Result
- The system allows the user to establish a new authenticated session.
- The user is redirected to the appropriate dashboard page.

# Notes
- Applies to AC-06 — Re-login.

# Attachments