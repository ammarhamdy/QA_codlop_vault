---
tc_id: TC-DASH-EMP-DELETE-002
title: Cancel Deletion
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
- The delete confirmation is displayed for an existing employee.

# Steps
1. Open the Employees Management module.
2. Select the delete action for an employee so that the delete confirmation is displayed.
3. Cancel the deletion operation.
4. Observe the system response.

# Expected Result
- The system does not delete the employee.
- The employee record is preserved.

# Notes
- Applies to AC-02 — Cancel Deletion.

# Attachments