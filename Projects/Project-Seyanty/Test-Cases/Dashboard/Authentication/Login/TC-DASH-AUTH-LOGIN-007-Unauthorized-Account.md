---
tc_id: TC-DASH-AUTH-LOGIN-007
title: Unauthorized Account
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
| Field    | Value                       |
| -------- | --------------------------- |
| Email    | unauthorized@example.com    |
| Password | ValidPassword123            |

# Preconditions
- The user account is registered and active but does not have permission to access the dashboard.
- Dashboard login page is displayed.

# Steps
1. Open the dashboard login page.
2. Enter the email of an account without dashboard permissions in the email field.
3. Enter the correct password for the account in the password field.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system denies dashboard access.
- No authenticated session is established for dashboard access.

# Notes
- Applies to AC-09 — Unauthorized Account.

# Attachments