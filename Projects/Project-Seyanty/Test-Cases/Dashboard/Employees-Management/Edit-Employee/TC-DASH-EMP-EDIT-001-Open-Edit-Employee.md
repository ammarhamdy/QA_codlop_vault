---
tc_id: TC-DASH-EMP-EDIT-001
title: Open Edit Employee
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
---

# Test Data
| Field | Value                      |
| ----- | -------------------------- |
| Name  | John Doe                   |
| Email | john.doe@example.com       |

# Preconditions
- User is an authorized dashboard user.
- User is accessing the Employees Management module.
- An existing employee record is available.

# Steps
1. Open the Employees Management module.
2. Select an existing employee for editing.
3. Observe the system response.

# Expected Result
- The system displays the employee's current information in an editable form.

# Notes
- Applies to AC-01 — Access Edit Employee.

# Attachments