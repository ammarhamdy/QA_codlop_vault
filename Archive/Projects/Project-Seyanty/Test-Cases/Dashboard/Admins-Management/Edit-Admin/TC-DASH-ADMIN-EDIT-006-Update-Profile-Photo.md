---
tc_id: TC-DASH-ADMIN-EDIT-006
title: Update Profile Photo
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field        | Value                |
| ------------ | -------------------- |
| Name         | John Admin           |
| Phone        | +201012345678        |
| Email        | admin@example.com    |
| Profile Photo| new_profile.png      |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.

# Steps
1. Open the selected administrator in the editable form.
2. Provide a new profile photo that satisfies the configured file requirements.
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system validates the new profile photo.
- The system associates the new photo with the administrator account.

# Notes
- Applies to AC-05 — Update Profile Photo.

# Attachments