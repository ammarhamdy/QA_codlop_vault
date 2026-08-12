---
tc_id: TC-DASH-ADMIN-DEACTIVATE-003
title: Login After Deactivation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-004
tags:
  - test-case
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Email      | deactivated@example.com |
| Password   | ValidPass123        |

# Preconditions
- The administrator account is inactive.
- Deactivation of the account has been completed.

# Steps
1. Navigate to the dashboard login page.
2. Enter the deactivated administrator's credentials.
3. Submit the login form.
4. Observe the system response.

# Expected Result
- The system denies authentication.
- The system prevents access to the dashboard.

# Notes
- Applies to AC-03 — Login After Deactivation.

# Attachments