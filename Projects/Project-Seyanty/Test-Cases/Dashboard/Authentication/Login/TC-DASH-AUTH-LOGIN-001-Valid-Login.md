---
tc_id: TC-DASH-AUTH-LOGIN-001
title: Valid Login
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-AUTH-001
tags:
  - test-case
---

# Test Data
| Field    | Value               |
| -------- | ------------------- |
| Email    | user@example.com    |
| Password | ValidPassword123    |

# Preconditions
- User has a registered and active dashboard account.
- User is not authenticated with an active session.
- Dashboard login page is accessible.

# Steps
1. Open the browser and navigate to the dashboard login page.
2. Verify the login form is displayed (email field, password field, and login action).
3. Enter a valid registered email address in the email field.
4. Enter the valid password for the account in the password field.
5. Click the login button.
6. Wait for the system to process the request.

# Expected Result
- The system authenticates the user successfully.
- An authenticated session is established for the user.
- The user is redirected to the appropriate dashboard page according to their permissions.

# Notes
- Applies to AC-06 — Successful Authentication.

# Attachments