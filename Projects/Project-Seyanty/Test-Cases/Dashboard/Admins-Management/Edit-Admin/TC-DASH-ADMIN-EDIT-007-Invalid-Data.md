---
tc_id: TC-DASH-ADMIN-EDIT-007
title: Invalid Data
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
| Field        | Value                     |
| ------------ | ------------------------- |
| Name         | (invalid value)           |
| Phone        | +201012345678             |
| Email        | admin@example.com         |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.
- Previously saved valid information exists for the account.

# Steps
1. Open the selected administrator in the editable form.
2. Enter one or more invalid values in the editable fields.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system rejects the update.
- The system preserves the previously saved valid information.

# Notes
- Applies to AC-07 — Invalid Update.

# Attachments