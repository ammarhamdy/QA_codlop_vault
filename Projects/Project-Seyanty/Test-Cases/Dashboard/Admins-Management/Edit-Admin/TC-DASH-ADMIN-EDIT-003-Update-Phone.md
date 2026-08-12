---
tc_id: TC-DASH-ADMIN-EDIT-003
title: Update Phone
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-002
tags:
  - test-case
---

# Test Data
| Field        | Value                 |
| ------------ | --------------------- |
| Name         | John Admin            |
| Phone        | +201098765432         |
| Email        | admin@example.com     |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.

# Steps
1. Open the selected administrator in the editable form.
2. Edit the phone number field with a valid new value.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system validates the updated phone number.
- The system saves the updated phone number since it is valid.

# Notes
- Applies to AC-03 — Update Phone Number.

# Attachments