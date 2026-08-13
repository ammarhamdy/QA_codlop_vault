---
tc_id: TC-DASH-EMP-EDIT-003
title: Update Phone
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
| Field     | Value                |
| --------- | -------------------- |
| Phone     | +15550999            |
| Name      | John Doe             |
| Email     | john.doe@example.com |
| Job Title | Software Engineer    |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with phone +15550123 is available.
- The employee edit form is displayed.

# Steps
1. Modify the employee's phone number to a valid value.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system validates the updated phone number.
- The system saves the updated phone number when valid.
- The employee record reflects the updated phone number.

# Notes
- Applies to AC-04 — Update Phone.

# Attachments