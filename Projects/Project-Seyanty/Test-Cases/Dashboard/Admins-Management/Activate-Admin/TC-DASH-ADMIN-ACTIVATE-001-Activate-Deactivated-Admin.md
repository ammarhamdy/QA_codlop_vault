---
tc_id: TC-DASH-ADMIN-ACTIVATE-001
title: Activate Deactivated Admin
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-003
tags:
  - test-case
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Admin Email| deactivated@example.com |

# Preconditions
- User is an authorized dashboard administrator.
- An existing administrator account is deactivated.

# Steps
1. Open the Admins Management module.
2. Select the deactivated administrator account.
3. Activate the account.
4. Observe the account status.

# Expected Result
- The system changes the account status to active.

# Notes
- Applies to AC-01 — Activate Administrator.

# Attachments