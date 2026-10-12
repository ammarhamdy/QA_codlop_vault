---
tc_id: TC-DASH-EMP-DELETE-005
title: Verify Employee Removed
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
| Status   | Deleted              |

# Preconditions
- User is an authorized dashboard user.
- An employee has been successfully deleted.

# Steps
1. Delete the employee record.
2. View the Employees Management list.
3. Observe the available employees.

# Expected Result
- The deleted employee no longer appears as an available employee in the Employees Management list.

# Notes
- Applies to AC-05 — Deleted Employee Availability.

# Attachments