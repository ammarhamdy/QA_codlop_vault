---
tc_id: TC-DASH-ADMIN-DELETE-002
title: Cancel Deletion
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-005
tags:
  - test-case
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Admin Email| admin@example.com   |

# Preconditions
- User is an authorized dashboard administrator.
- The delete confirmation is displayed for an existing administrator account.

# Steps
1. Open the Admins Management module.
2. Select an existing administrator account.
3. Select the delete action.
4. When the delete confirmation is displayed, cancel the operation.
5. Observe the system response.

# Expected Result
- The system does not delete the administrator account.
- The account and its information are preserved.

# Notes
- Applies to AC-02 — Cancel Deletion.

# Attachments