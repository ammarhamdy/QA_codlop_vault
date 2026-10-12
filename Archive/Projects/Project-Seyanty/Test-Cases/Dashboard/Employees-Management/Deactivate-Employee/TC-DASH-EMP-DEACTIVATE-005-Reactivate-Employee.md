---
tc_id: TC-DASH-EMP-DEACTIVATE-005
title: Reactivate Employee
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
run_result: pass
---

# Test Data
| Field    | Value                |
| -------- | -------------------- |
| Status   | Active               |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- An employee is inactive.
- The employee record is accessible in the Employees Management module.

# Steps
1. Open the Employees Management module.
2. Locate the inactive employee.
3. Select the activation action for the employee.
4. Observe the system response.

# Expected Result
- The system changes the employee's status to active.

# Notes
- Applies to AC-05 — Reactivate Employee.

# Attachments