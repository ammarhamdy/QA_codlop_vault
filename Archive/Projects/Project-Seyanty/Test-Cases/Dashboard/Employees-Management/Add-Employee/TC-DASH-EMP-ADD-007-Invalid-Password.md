---
tc_id: TC-DASH-EMP-ADD-007
title: Invalid Password
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
run_result: fail
---

# Test Data
| Field     | Value                                        |
| --------- | -------------------------------------------- |
| Name      | John Doe                                     |
| Phone     | +15550123                                   |
| Email     | john.doe@example.com                         |
| Password  | <password violating the password validation rule> |
| Job Title | Software Engineer                             |

# Preconditions
- User is an authorized dashboard user.
- The Add Employee form is displayed.

# Steps
1. Enter a password that does not satisfy the applicable password validation rules.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Observe the system response.

# Expected Result
- The system rejects the creation request.
- The system displays an appropriate validation message for the password.
- No employee record is created.

# Notes
- Applies to AC-03 — Validate Employee Information.

# Attachments