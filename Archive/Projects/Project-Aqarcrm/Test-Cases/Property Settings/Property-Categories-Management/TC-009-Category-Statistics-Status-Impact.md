---
tc_id: TC-PCat-009
title: Verify Statistics After Activating and Deactivating Property Category
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
-At least one active and one inactive category exist.
# Steps
1. Record the current total, active, and inactive counts.  
2. Activate an inactive category.  
3. Deactivate an active category.  
4. Verify the statistics again.
# Expected Result
-After activation, the active count increases by 1 and inactive count decreases by 1. After deactivation, the inactive count increases by 1 and active count decreases by 1. The total count remains unchanged.
# Notes

# Attachments
