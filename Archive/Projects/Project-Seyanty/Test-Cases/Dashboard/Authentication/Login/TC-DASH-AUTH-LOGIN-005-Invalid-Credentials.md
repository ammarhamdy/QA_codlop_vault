---
tc_id: TC-DASH-AUTH-LOGIN-005
title: Invalid Credentials
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
| Password | WrongPassword123    |

# Preconditions
- User has a registered and active dashboard account.
- Dashboard login page is displayed.

# Steps
1. Open the dashboard login page.
2. Enter a registered email address in the email field.
3. Enter an incorrect password in the password field.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system rejects the authentication attempt.
- An appropriate authentication error message is displayed.
- No authenticated session is established and no dashboard access is granted.

# Notes
- Applies to AC-07 — Invalid Credentials.

# Attachments