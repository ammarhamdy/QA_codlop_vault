---
tc_id: TC-PCat-015
title: Verify Statistics After Deleting Property Category
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
-An existing property category is available and can be deleted.
# Steps
1. Record the current statistics.  
2. Delete the category.  
3. Check the statistics.
# Expected Result
-The total category count decreases by 1, and the corresponding active/inactive count is updated correctly.
# Notes

# Attachments
