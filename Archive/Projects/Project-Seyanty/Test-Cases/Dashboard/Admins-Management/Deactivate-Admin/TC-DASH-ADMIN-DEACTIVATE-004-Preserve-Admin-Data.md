---
tc_id: TC-DASH-ADMIN-DEACTIVATE-004
title: Preserve Admin Data
priority:
  - Medium
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
1. Deactivate an active administrator account.
2. View the deactivated administrator account details.

# Expected Result
- The system preserves the administrator's existing information after deactivation.

# Notes
- Applies to AC-04 — Preserve Administrator Data.

# Attachments