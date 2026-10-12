---
tc_id: TC-DASH-EMP-DEACTIVATE-001
title: Deactivate Active Employee
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
| Status   | Inactive             |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- An existing employee is active.
- The employee record is accessible in the Employees Management module.

# Steps
1. Open the Employees Management module.
2. Locate the active employee.
3. Select the deactivation action for the employee.
4. Observe the system response.

# Expected Result
- The system changes the employee's status to inactive.

# Notes
- Applies to AC-01 — Deactivate Employee.

# Attachments