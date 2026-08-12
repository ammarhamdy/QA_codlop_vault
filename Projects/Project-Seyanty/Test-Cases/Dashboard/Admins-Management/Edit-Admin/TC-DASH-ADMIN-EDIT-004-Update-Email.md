---
tc_id: TC-DASH-ADMIN-EDIT-004
title: Update Email
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
| Field        | Value                      |
| ------------ | -------------------------- |
| Name         | John Admin                 |
| Phone        | +201012345678              |
| Email        | newemail@example.com       |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.
- The new email is not already associated with another administrator.

# Steps
1. Open the selected administrator in the editable form.
2. Edit the email field with a valid, unused email address.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system validates the email format.
- The system saves the updated email since it is valid and not already in use by another administrator.

# Notes
- Applies to AC-04 — Update Email.

# Attachments