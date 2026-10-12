---
tc_id: TC-DASH-EMP-DELETE-001
title: Open Delete Confirmation
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
| Field    | Value                |
| -------- | -------------------- |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- An employee record is accessible in the Employees Management module.

# Steps
1. Open the Employees Management module.
2. View an existing employee.
3. Select the delete action for the employee.
4. Observe the system response.

# Expected Result
- The system requests confirmation before deleting the employee.

# Notes
- Applies to AC-01 — Delete Employee.

# Attachments