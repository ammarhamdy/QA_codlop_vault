---
tc_id: TC-DASH-EMP-ACTIVATE-003
title: Active Employee Access
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-003
tags:
  - test-case
---

# Test Data
| Field    | Value                |
| -------- | -------------------- |
| Status   | Active               |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- An employee account is active.
- The active employee has been granted the relevant permissions.
- Functionality available to active employees exists.

# Steps
1. Activate the employee account.
2. The employee attempts to access functionality available to active employees.
3. Observe the system response.

# Expected Result
- The system allows the active employee to access the functionality according to the employee's permissions.

# Notes
- Applies to AC-03 — Active Employee Access.

# Attachments