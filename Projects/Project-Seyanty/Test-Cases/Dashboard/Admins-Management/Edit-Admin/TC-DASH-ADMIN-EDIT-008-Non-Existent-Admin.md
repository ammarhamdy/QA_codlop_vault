---
tc_id: TC-DASH-ADMIN-EDIT-008
title: Non-Existent Admin
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
| Field | Value |
| ----- | ----- |
|       |       |

# Preconditions
- User is an authorized dashboard administrator.
- An administrator account was selected for editing but no longer exists.

# Steps
1. Attempt to edit the selected administrator account.
2. Submit the edit operation.
3. Observe the system response.

# Expected Result
- The system rejects the operation.
- The system informs the user that the administrator account is unavailable.

# Notes
- Applies to AC-08 — Non-Existent Administrator.

# Attachments