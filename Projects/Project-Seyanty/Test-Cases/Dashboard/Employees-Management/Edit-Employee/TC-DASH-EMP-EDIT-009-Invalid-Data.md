---
tc_id: TC-DASH-EMP-EDIT-009
title: Invalid Data
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
| Field    | Value                |
| -------- | -------------------- |
| Email    | invalid-email        |
| Name     | John Doe             |
| Phone    | +15550123            |
| Job Title | Software Engineer   |

# Preconditions
- User is an authorized dashboard user.
- An existing employee record with previously saved information is available.
- The employee edit form is displayed.

# Steps
1. Modify one or more employee values so that they are invalid (e.g., an invalid email).
2. Submit the changes.
3. Observe the system response.

# Expected Result
- The system rejects the update.
- The previously saved employee information is preserved.
- The system displays appropriate validation messages.

# Notes
- Applies to AC-09 — Invalid Update.

# Attachments