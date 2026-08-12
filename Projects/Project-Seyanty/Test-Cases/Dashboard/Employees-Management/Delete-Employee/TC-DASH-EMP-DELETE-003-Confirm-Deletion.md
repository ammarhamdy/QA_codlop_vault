---
tc_id: TC-DASH-EMP-DELETE-003
title: Confirm Deletion
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-005
tags:
  - test-case
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
3. Confirm the deletion.
4. Observe the system response.

# Expected Result
- The system deletes the employee record.
- The system displays a successful deletion confirmation.

# Notes
- Applies to AC-03 — Confirm Deletion.

# Attachments