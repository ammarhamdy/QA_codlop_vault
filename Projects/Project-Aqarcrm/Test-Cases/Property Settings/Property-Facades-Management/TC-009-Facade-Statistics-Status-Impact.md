---
tc_id: TC-PFac-009
title: Verify Statistics After Activating and Deactivating Property Facade
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-017-Property-Settings1
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-At least one active and one inactive facade exist.
# Steps
1. Record the current total, active, and inactive counts.  
2. Activate an inactive facade.  
3. Deactivate an active facade.  
4. Verify the statistics .
# Expected Result
-After activation, the active count increases by 1 and inactive count decreases by 1. After deactivation, the inactive count increases by 1 and active count decreases by 1. The total count remains unchanged.
# Notes

# Attachments
