---
tc_id: TC-DASH-ADMIN-DEACTIVATE-001
title: Deactivate Active Admin
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-004
tags:
  - test-case
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Admin Email| active@example.com  |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is active.

# Steps
1. Open the Admins Management module.
2. Select the active administrator account.
3. Deactivate the account.
4. Observe the account status.

# Expected Result
- The system changes the account status to inactive.

# Notes
- Applies to AC-01 — Deactivate Administrator.

# Attachments