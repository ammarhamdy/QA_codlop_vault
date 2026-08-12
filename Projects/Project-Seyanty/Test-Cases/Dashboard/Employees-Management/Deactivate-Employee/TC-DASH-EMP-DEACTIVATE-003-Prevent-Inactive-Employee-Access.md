---
tc_id: TC-DASH-EMP-DEACTIVATE-003
title: Prevent Inactive Employee Access
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
---

# Test Data
| Field    | Value                |
| -------- | -------------------- |
| Status   | Inactive             |
| Name     | John Doe             |
| Email    | john.doe@example.com |

# Preconditions
- An employee account is inactive.
- Functionality that requires an active employee account exists.

# Steps
1. Deactivate the employee account.
2. The employee attempts to access functionality that requires an active employee account.
3. Observe the system response.

# Expected Result
- The system denies the inactive employee access to functionality that requires an active employee account.

# Notes
- Applies to AC-03 — Prevent Inactive Employee Access.

# Attachments