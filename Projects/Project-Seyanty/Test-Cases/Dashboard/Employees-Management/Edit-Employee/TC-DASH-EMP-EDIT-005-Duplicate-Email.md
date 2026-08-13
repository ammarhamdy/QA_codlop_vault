---
tc_id: TC-DASH-EMP-EDIT-005
title: Duplicate Email
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
| Field    | Value                     |
| -------- | ------------------------- |
| Email    | jane.smith@example.com    |
| Name     | John Doe                  |
| Phone    | +15550123                 |
| Job Title | Software Engineer         |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with email john.doe@example.com is being edited.
- Another employee account already uses the email jane.smith@example.com.
- The employee edit form is displayed.

# Steps
1. Modify the employee's email address to one that is already used by another employee account.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system rejects the update because the email conflicts with another employee account.
- The previously saved employee information is preserved.

# Notes
- Applies to AC-05 — Update Email and AC-09 — Invalid Update.

# Attachments