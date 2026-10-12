---
tc_id: TC-DASH-EMP-ADD-004
title: Invalid Email
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
1. Enter an email address with an invalid format.
2. Enter valid values in the remaining fields.
3. Submit the Add Employee form.
4. Observe the system response.

# Expected Result
- The system rejects the submitted data.
- The system displays an appropriate validation message indicating the email format is invalid.
- No employee record is created.

# Notes
- Applies to AC-04 — Email Validation and AC-08 — Creation Failure.

# Attachments