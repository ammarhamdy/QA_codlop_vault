---
tc_id: TC-DASH-EMP-DELETE-006
title: Delete Non-Existent Employee
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-005
tags:
  - test-case
run_result: pass
---

# Test Data
| Field    | Value                      |
| -------- | -------------------------- |
| Name     | John Doe (no longer exists)|

# Preconditions
- User is an authorized dashboard user.
- The selected employee record does not exist in the system.

# Steps
1. Access the delete action for an employee that does not exist.
2. Attempt to delete the employee.
3. Observe the system response.

# Expected Result
- The system rejects the deletion operation.
- The system displays an appropriate message indicating the employee does not exist.

# Notes
- Applies to AC-06 — Non-Existent Employee.

# Attachments