---
tc_id: TC-DASH-AUTH-LOGIN-006
title: Inactive Account
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
| Field    | Value                    |
| -------- | ------------------------ |
| Email    | inactive@example.com     |
| Password | ValidPassword123         |

# Preconditions
- The user account is registered but inactive (e.g., deactivated or disabled).
- Dashboard login page is displayed.

# Steps
1. Open the dashboard login page.
2. Enter the email of an inactive account in the email field.
3. Enter the correct password for the account in the password field.
4. Click the login button.
5. Observe the system response.

# Expected Result
- The system denies access to the dashboard.
- An appropriate account-status message is displayed indicating the account is inactive.
- No authenticated session is established.

# Notes
- Applies to AC-08 — Inactive Account.

# Attachments