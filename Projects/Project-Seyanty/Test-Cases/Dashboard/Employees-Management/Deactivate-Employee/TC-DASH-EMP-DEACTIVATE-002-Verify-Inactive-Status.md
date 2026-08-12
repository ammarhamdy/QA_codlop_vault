---
tc_id: TC-DASH-EMP-DEACTIVATE-002
title: Verify Inactive Status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
---

# Test Data
| Field    | Value                |
| -------- | -------------------- |
| Status   | Inactive             |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- User is an authorized dashboard user.
- The employee has been successfully deactivated.

# Steps
1. Complete the deactivation of the employee.
2. View the employee's record in the Employees Management module.
3. Observe the displayed status.

# Expected Result
- The system displays the employee as inactive.

# Notes
- Applies to AC-02 — Verify Inactive Status.

# Attachments