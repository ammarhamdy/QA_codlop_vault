---
tc_id: TC-003
title: Verify Filtering Activity Logs by Action, Record, and Combined Filters
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
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
Admin is logged in and on Activity Logs page
# Steps
1. Select an action from the Action filter and click Apply Filter.  
2. Verify results.  
3. Select a record type from the Record filter and click Apply Filter.  
4. Verify results.  
5. Select both an action and a record type and click Apply Filter.
# Expected Result
-Only logs matching the selected action are displayed when filtering by action, only logs matching the selected record type are displayed when filtering by record, and only logs matching both selected filters are displayed when applying combined filters.
# Notes

# Attachments
