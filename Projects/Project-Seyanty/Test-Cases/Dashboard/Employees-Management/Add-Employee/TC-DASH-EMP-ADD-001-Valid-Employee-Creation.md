---
tc_id: TC-DASH-EMP-ADD-001
title: Valid Employee Creation
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
| Field         | Value                |
| ------------- | -------------------- |
| Name          | John Doe             |
| Phone         | +15550123            |
| Email         | john.doe@example.com |
| Password      | StrongPassword123    |
| Job Title     | Software Engineer    |
| Overview      | Experienced engineer |
| Profile Photo | valid-profile.png    |

# Preconditions
- User is an authorized dashboard user.
- User has access to the Employees Management module.
- The Add Employee form is accessible.

# Steps
1. Open the Employees Management module.
2. Select the option to add an employee.
3. Enter valid information in all employee fields.
4. Submit the Add Employee form.
5. Observe the system response.

# Expected Result
- The system creates the employee record with the submitted information.
- The system displays a successful creation confirmation.
- The new employee appears in the Employees Management list.

# Notes
- Applies to AC-07 — Employee Creation.

# Attachments