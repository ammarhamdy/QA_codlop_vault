---
tc_id: TC-DASH-ADMIN-DELETE-004
title: Login After Deletion
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
| Email      | deleted@example.com |
| Password   | ValidPass123        |

# Preconditions
- The administrator account has been deleted.

# Steps
1. Navigate to the dashboard login page.
2. Enter the deleted administrator's credentials.
3. Submit the login form.
4. Observe the system response.

# Expected Result
- The system denies authentication.
- The system prevents dashboard access.

# Notes
- Applies to AC-04 — Deleted Administrator Access.

# Attachments