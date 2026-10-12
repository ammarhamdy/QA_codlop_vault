---
tc_id: TC-DASH-AUTH-LOGIN-004
title: Invalid Email Format
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
| Field    | Value              |
| -------- | ------------------ |
| Email    | invalid-email      |
| Password | SomePassword123    |

# Preconditions
- Dashboard login page is displayed.

# Steps
1. Open the dashboard login page.
2. Enter an email address with an invalid format in the email field.
3. Enter any password in the password field.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system prevents the login attempt.
- An appropriate validation message is displayed indicating the email format is invalid.
- No authenticated session is established.

# Notes
- Applies to AC-04 — Validate Email Format.

# Attachments