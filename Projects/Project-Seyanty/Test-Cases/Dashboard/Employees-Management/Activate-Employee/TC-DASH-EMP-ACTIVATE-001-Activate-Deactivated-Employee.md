---
tc_id: TC-DASH-EMP-ACTIVATE-001
title: Activate Deactivated Employee
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-003
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
- An existing employee is deactivated.
- The employee record is accessible in the Employees Management module.

# Steps
1. Open the Employees Management module.
2. Locate the deactivated employee.
3. Select the activation action for the employee.
4. Observe the system response.

# Expected Result
- The system changes the employee's status to active.

# Notes
- Applies to AC-01 — Activate Employee.

# Attachments