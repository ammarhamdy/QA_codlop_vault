---
tc_id: TC-DASH-EMP-ACTIVATE-002
title: Verify Active Status
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
- The employee has been successfully activated.

# Steps
1. Complete the activation of the employee.
2. View the employee's record in the Employees Management module.
3. Observe the displayed status.

# Expected Result
- The system displays the employee as active.

# Notes
- Applies to AC-02 — Verify Active Status.

# Attachments