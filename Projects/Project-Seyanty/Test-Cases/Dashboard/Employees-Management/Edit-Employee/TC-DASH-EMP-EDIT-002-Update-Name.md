---
tc_id: TC-DASH-EMP-EDIT-002
title: Update Name
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-002
tags:
  - test-case
---

# Test Data
| Field   | Value                |
| ------- | -------------------- |
| Name    | Johnathan Doe        |
| Email   | john.doe@example.com |
| Phone   | +15550123            |
| Job Title | Software Engineer  |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with name John Doe is available.
- The employee edit form is displayed.

# Steps
1. Modify the employee's name to a valid value.
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system saves the updated name.
- The employee record reflects the updated name.

# Notes
- Applies to AC-03 — Update Name.

# Attachments