---
tc_id: TC-DASH-EMP-EDIT-004
title: Update Email
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
| Email    | john.new@example.com      |
| Name     | John Doe                  |
| Phone    | +15550123                 |
| Job Title | Software Engineer         |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with email john.doe@example.com is available.
- No other employee account uses john.new@example.com.
- The employee edit form is displayed.

# Steps
1. Modify the employee's email address to a valid, non-conflicting email.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system validates the updated email address.
- The system saves the updated email when valid and non-conflicting.
- The employee record reflects the updated email.

# Notes
- Applies to AC-05 — Update Email.

# Attachments