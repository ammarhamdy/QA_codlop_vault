---
tc_id: TC-DASH-ADMIN-DEACTIVATE-005
title: Reactivate Admin
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-004
tags:
  - test-case
run_result: pass
---

# Test Data
| Field      | Value               |
| ---------- | ------------------- |
| Admin Email| deactivated@example.com |

# Preconditions
- User is an authorized dashboard administrator.
- The administrator account has been deactivated.

# Steps
1. Open the Admins Management module.
2. Select the deactivated administrator account.
3. Activate the account.
4. Observe the account status.

# Expected Result
- The system restores the account to an active status.

# Notes
- Applies to AC-05 — Reactivation.

# Attachments