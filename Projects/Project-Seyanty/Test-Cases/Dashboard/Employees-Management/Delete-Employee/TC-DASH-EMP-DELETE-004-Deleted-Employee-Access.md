---
tc_id: TC-DASH-EMP-DELETE-004
title: Deleted Employee Access
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-005
tags:
  - test-case
run_result: pass
---

# Test Data
| Field    | Value                |
| -------- | -------------------- |
| Name     | John Doe             |
| Email    | john.doe@example.com |
| Status   | Deleted              |

# Preconditions
- An employee has been deleted.
- Functionality requiring an existing employee account exists.

# Steps
1. Delete the employee record.
2. The employee attempts to access functionality that requires an existing employee account.
3. Observe the system response.

# Expected Result
- The system denies access to functionality that requires an existing employee account.

# Notes
- Applies to AC-04 — Deleted Employee Access.

# Attachments