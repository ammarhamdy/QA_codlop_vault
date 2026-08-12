---
tc_id: TC-DASH-ADMIN-EDIT-002
title: Update Name
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
| Name         | New Admin Name        |
| Phone        | +201012345678         |
| Email        | admin@example.com     |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.

# Steps
1. Open the selected administrator in the editable form.
2. Edit the name field with a valid new value.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system saves the updated name.
- The administrator account retains its existing identity.

# Notes
- Applies to AC-02 — Update Administrator Name.

# Attachments