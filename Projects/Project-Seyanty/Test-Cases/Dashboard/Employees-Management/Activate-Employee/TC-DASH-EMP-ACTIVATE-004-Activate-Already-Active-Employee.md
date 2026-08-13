---
tc_id: TC-DASH-EMP-ACTIVATE-004
title: Activate Already Active Employee
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
| Status   | Active               |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- An employee is already active.

# Steps
1. Open the Employees Management module.
2. Locate an employee that is already active.
3. Attempt to activate the employee.
4. Observe the system response.

# Expected Result
- The system preserves the employee's active status.

# Notes
- Applies to AC-04 — Already Active Employee.

# Attachments