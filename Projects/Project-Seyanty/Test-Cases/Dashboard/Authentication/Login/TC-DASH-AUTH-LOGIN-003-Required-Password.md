---
tc_id: TC-DASH-AUTH-LOGIN-003
title: Required Password
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
| Field    | Value            |
| -------- | ---------------- |
| Email    | user@example.com |
| Password | (empty)          |

# Preconditions
- Dashboard login page is displayed.
- The password field is left empty.

# Steps
1. Open the dashboard login page.
2. Enter a valid registered email address in the email field.
3. Leave the password field empty.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system prevents the login attempt.
- An appropriate validation message is displayed indicating that the password is required.
- No authenticated session is established.

# Notes
- Applies to AC-03 — Password Is Required.

# Attachments