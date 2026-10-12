---
tc_id: TC-DASH-AUTH-LOGIN-002
title: Required Email
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
| Field    | Value   |
| -------- | ------- |
| Email    | (empty) |
| Password | SomePassword123 |

# Preconditions
- Dashboard login page is displayed.
- The email field is left empty.

# Steps
1. Open the dashboard login page.
2. Leave the email field empty.
3. Enter any password in the password field.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system prevents the login attempt.
- An appropriate validation message is displayed indicating that the email is required.
- No authenticated session is established.

# Notes
- Applies to AC-02 — Email Is Required.

# Attachments