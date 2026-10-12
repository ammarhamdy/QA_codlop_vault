---
tc_id: TC-DASH-ADMIN-EDIT-009
title: Update Account Information
priority:
  - High
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
| Field        | Value                    |
| ------------ | ------------------------ |
| Name         | Updated Admin Name       |
| Phone        | +201076543210            |
| Email        | updated@example.com      |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is open for editing.

# Steps
1. Open the selected administrator in the editable form.
2. Modify one or more valid editable fields (e.g., name, phone, email).
3. Submit the changes.
4. Observe the system response.

# Expected Result
- The system updates the administrator account with the modified valid information.
- A successful update confirmation is displayed.

# Notes
- Applies to AC-06 — Update Account Information.

# Attachments