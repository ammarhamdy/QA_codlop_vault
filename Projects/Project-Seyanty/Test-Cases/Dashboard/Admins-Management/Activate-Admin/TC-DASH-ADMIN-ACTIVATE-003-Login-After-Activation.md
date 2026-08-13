---
tc_id: TC-DASH-ADMIN-ACTIVATE-003
title: Login After Activation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-003
tags:
  - test-case
run_result: pass
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Email      | activated@example.com |
| Password   | ValidPass123        |

# Preconditions
- The administrator account is active with valid authentication credentials.
- Activation of the account has been completed.

# Steps
1. Navigate to the dashboard login page.
2. Enter the activated administrator's credentials.
3. Submit the login form.
4. Observe the system response.

# Expected Result
- The system allows authentication subject to the account's permissions.
- The activated administrator gains access to the dashboard according to the assigned permissions.

# Notes
- Applies to AC-03 — Login After Activation.

# Attachments