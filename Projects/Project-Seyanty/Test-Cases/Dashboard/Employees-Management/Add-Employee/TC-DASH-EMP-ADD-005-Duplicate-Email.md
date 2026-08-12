---
tc_id: TC-DASH-EMP-ADD-005
title: Duplicate Email
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
---

# Test Data
| Field     | Value                    |
| --------- | ------------------------ |
| Name      | Jane Smith               |
| Phone     | +15550987                |
| Email     | john.doe@example.com     |
| Password  | StrongPassword456        |
| Job Title | Product Manager          |

# Preconditions
- User is an authorized dashboard user.
- An existing employee already uses the email john.doe@example.com.
- The Add Employee form is displayed.

# Steps
1. Enter employee information using an email address that is already used by an existing employee.
2. Submit the Add Employee form.
3. Observe the system response.

# Expected Result
- The system rejects the creation request because the email address already exists.
- No new employee record is created.

# Notes
- Applies to AC-05 — Duplicate Employee Email.

# Attachments