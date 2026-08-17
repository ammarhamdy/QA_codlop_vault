---
tc_id: TC-Purp-016
title: Verify Statistics After Deleting Purpose
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-017-Property-Settings1
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-An existing property purpose is available.
# Steps
1. Record the current statistics.  
2. Delete the purpose.  
3. Check the statistics.
# Expected Result
-The total count decreases by 1 and the corresponding active/inactive count is updated.
# Notes

# Attachments
