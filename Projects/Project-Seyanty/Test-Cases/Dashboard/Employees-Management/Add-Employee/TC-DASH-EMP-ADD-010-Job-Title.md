---
tc_id: TC-DASH-EMP-ADD-010
title: Job Title
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
| Field     | Value                         |
| --------- | ----------------------------- |
| Name      | John Doe                      |
| Phone     | +15550123                     |
| Email     | john.doe@example.com          |
| Password  | StrongPassword123             |
| Job Title | QA Engineer                   |
| Overview  | Manual and automation testing |

# Preconditions
- User is an authorized dashboard user.
- The Add Employee form is displayed.

# Steps
1. Verify that the Add Employee form provides a job title field.
2. Enter a valid job title.
3. Enter valid values in the remaining fields.
4. Submit the Add Employee form.
5. Observe the system response.

# Expected Result
- The Add Employee form provides a job title field.
- The system accepts the submitted job title.
- The employee record is created with the submitted job title.

# Notes
- Applies to AC-02 — Employee Information and AC-07 — Employee Creation.

# Attachments