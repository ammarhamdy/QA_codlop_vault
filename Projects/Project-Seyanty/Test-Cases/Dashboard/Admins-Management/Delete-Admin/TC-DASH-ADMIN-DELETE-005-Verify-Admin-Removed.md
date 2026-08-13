---
tc_id: TC-DASH-ADMIN-DELETE-005
title: Verify Admin Removed
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-005
tags:
  - test-case
run_result: pass
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Admin Email| admin@example.com   |

# Preconditions
- User is an authorized dashboard administrator.
- An administrator account has been successfully deleted.

# Steps
1. Delete an administrator account.
2. Open the Admins Management module.
3. View the list of administrators.

# Expected Result
- The deleted account no longer appears as an available administrator in the list.

# Notes
- Applies to AC-05 — Deleted Administrator Availability.

# Attachments