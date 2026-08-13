---
tc_id: TC-DASH-EMP-ADD-012
title: Creation Failure
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
| Field     | Value             |
| --------- | ----------------- |
| Name      | John Doe          |
| Phone     | +15550123         |
| Email     | invalid-email     |
| Password  | StrongPassword123 |
| Job Title | Software Engineer |

# Preconditions
- User is an authorized dashboard user.
- The Add Employee form is displayed.

# Steps
1. Enter employee information containing an invalid value (e.g., an invalid email).
2. Submit the Add Employee form.
3. Observe the system response.
4. Reopen or inspect the Add Employee form.

# Expected Result
- The system does not create the employee record.
- The system displays appropriate validation messages.
- The submitted form data is preserved where applicable.

# Notes
- Applies to AC-08 — Creation Failure and AC-03 — Validate Employee Information.

# Attachments