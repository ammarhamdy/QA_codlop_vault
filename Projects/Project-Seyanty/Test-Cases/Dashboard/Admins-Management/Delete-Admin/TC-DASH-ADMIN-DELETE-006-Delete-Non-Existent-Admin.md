---
tc_id: TC-DASH-ADMIN-DELETE-006
title: Delete Non-Existent Admin
priority:
  - High
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
| Admin ID   | (non-existent)      |

# Preconditions
- User is an authorized dashboard administrator.
- The selected administrator account does not exist.

# Steps
1. Open the Admins Management module.
2. Attempt to delete an administrator account that does not exist.
3. Observe the system response.

# Expected Result
- The system rejects the operation.
- An appropriate message is displayed.

# Notes
- Applies to AC-06 — Non-Existent Administrator.

# Attachments