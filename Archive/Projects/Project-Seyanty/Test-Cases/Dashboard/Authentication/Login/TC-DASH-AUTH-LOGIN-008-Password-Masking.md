---
tc_id: TC-DASH-AUTH-LOGIN-008
title: Password Masking
priority:
  - Medium
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
| Password | ValidPassword123 |

# Preconditions
- Dashboard login page is displayed.

# Steps
1. Open the dashboard login page.
2. Enter a password value in the password field.
3. Observe how the entered value is displayed.

# Expected Result
- The system masks the password value as it is entered into the password field (e.g., displayed as dots, asterisks, or similar).
- The actual password characters are not visible.

# Notes
- Applies to AC-05 — Password Masking.

# Attachments