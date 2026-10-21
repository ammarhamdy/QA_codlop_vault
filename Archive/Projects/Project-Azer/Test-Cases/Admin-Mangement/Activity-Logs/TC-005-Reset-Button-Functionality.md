---
tc_id: TC-005
title: Verify Apply Filter Button Functionality
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Activity Logs page
# Steps
1. Select filter values &Apply Filter.  
2. . Apply Reset Filter.
# Expected Result
-All applied filters are cleared,  and the activity logs table displays all records in its default state.
# Notes

# Attachments
