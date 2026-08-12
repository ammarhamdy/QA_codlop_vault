---
tc_id: TC-DASH-EMP-DEACTIVATE-004
title: Preserve Employee Data
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
| Field     | Value                |
| --------- | -------------------- |
| Name      | John Doe             |
| Phone     | +15550123            |
| Email     | john.doe@example.com |
| Job Title | Software Engineer    |
| Status    | Inactive             |

# Preconditions
- User is an authorized dashboard user.
- An employee has been deactivated.
- The employee record holds existing information (name, phone, email, job title, overview, profile photo).

# Steps
1. Open the Employees Management module.
2. View the record of the deactivated employee.
3. Observe the employee's existing information.

# Expected Result
- The system preserves the employee's existing information.
- All previously saved employee data remains unchanged.

# Notes
- Applies to AC-04 — Preserve Employee Data.

# Attachments