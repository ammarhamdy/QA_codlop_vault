---
tc_id: TC-DASH-EMP-EDIT-010
title: Successful Update
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                     |
| ------------- | ------------------------- |
| Name          | Johnathan Doe             |
| Phone         | +15550999                 |
| Email         | john.new@example.com      |
| Job Title     | Senior QA Engineer        |
| Overview      | Senior engineer with 10 years of experience |
| Profile Photo | new-profile.png           |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record is available.
- The email john.new@example.com is not used by any other employee account.
- The employee edit form is displayed.

# Steps
1. Modify the employee information with valid data across the editable fields.
2. Save the changes.
3. Observe the system response.

# Expected Result
- The system updates the employee record with all the submitted valid information.
- The system displays a successful update confirmation.
- The employee record reflects all updated values.

# Notes
- Applies to AC-02 — Update Employee Information and AC-10 — Successful Update.

# Attachments