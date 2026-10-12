---
tc_id: TC-DASH-ADMIN-ACTIVATE-002
title: Verify Active Status
priority:
  - Medium
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-ADMIN-003
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
- The administrator account has been successfully activated.

# Steps
1. Activate a deactivated administrator account.
2. Wait for the operation to complete.
3. View the account status.

# Expected Result
- The system displays the updated active status.

# Notes
- Applies to AC-02 — Activation Confirmation.

# Attachments