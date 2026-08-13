---
tc_id: TC-DASH-EMP-EDIT-006
title: Update Job Title
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
| Job Title | Senior QA Engineer  |
| Name      | John Doe             |
| Email     | john.doe@example.com |
| Phone     | +15550123            |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with job title Software Engineer is available.
- The employee edit form is displayed.

# Steps
1. Modify the employee's job title to a valid value.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system saves the updated job title.
- The employee record reflects the updated job title.

# Notes
- Applies to AC-06 — Update Job Title.

# Attachments