---
tc_id: TC-Purp-012
title: Verify Statistics After Activating and Deactivating Property Purpose
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
-At least one active and one inactive property purpose exist.
# Steps
1. Record the current **total, active, and inactive** purpose counts.  
2. Activate an inactive property purpose.  
3. Deactivate an active property purpose.  
4. Verify the statistics again.
# Expected Result
-After activation, the **active count increases by 1** and the **inactive count decreases by 1**. After deactivation, the **inactive count increases by 1** and the **active count decreases by 1**. The total count remains unchanged.
# Notes

# Attachments
