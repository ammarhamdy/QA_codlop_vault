---
tc_id: TC-PFeat-016
title: Verify Only Active Features Are Available During Property Creation
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
-At least one active, one inactive, and one deleted property feature exist.
# Steps
1. Navigate to **Add Property**.  
2. Open the **Property Features** selection.  
3. Review the available features.
# Expected Result
-Only **active property features** are displayed and available for selection. Inactive and deleted features do not appear.
# Notes

# Attachments
