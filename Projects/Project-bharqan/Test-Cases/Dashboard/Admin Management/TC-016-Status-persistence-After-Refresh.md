---
tc_id: TC-Admin-016
title: Verify Status Persistence After Refresh
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-012-Bharqan-Admin-Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
-Admin is logged in and on Admins page
# Steps
1. Change status 
2. Refresh page
# Expected Result
-Status remains unchanged after refresh
# Notes

# Attachments
