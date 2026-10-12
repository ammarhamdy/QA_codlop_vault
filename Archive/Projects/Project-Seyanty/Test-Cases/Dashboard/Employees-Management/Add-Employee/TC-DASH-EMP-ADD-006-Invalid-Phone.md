---
tc_id: TC-DASH-EMP-ADD-006
title: Invalid Phone
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
run_result: pass
---

# Test Data
| Field     | Value                                   |
| --------- | --------------------------------------- |
| Name      | John Doe                                |
| Phone     | <phone violating the phone validation rule> |
| Email     | john.doe@example.com                    |
| Password  | StrongPassword123                       |
| Job Title | Software Engineer                        |

# Preconditions
- User is an authorized dashboard user.
- The Add Employee form is displayed.

# Steps
1. Enter a phone number that does not satisfy the applicable phone validation rules.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Observe the system response.

# Expected Result
- The system rejects the creation request.
- The system displays an appropriate validation message for the phone number.
- No employee record is created.

# Notes
- Applies to AC-03 — Validate Employee Information.

# Attachments