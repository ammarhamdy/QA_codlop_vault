---
tc_id: TC-DASH-ADMIN-DEACTIVATE-002
title: Verify Inactive Status
priority:
  - Medium
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
- The administrator account has been successfully deactivated.

# Steps
1. Deactivate an active administrator account.
2. Wait for the operation to complete.
3. View the account status.

# Expected Result
- The system displays the updated inactive status.

# Notes
- Applies to AC-02 — Deactivation Confirmation.

# Attachments