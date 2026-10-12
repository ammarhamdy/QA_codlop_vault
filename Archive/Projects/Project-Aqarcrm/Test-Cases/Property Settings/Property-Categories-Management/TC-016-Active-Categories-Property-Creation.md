---
tc_id: TC-PCat-016
title: Verify Only Active Categories Are Available During Property Creation
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
-At least one active, one inactive, and one deleted category exist.
# Steps
1. Navigate to **Add Property**.  
2. Open the **Property Category** dropdown.  
3. Review the available categories.
# Expected Result
-Only **active property categories** are displayed and available for selection. Inactive and deleted categories do not appear.
# Notes

# Attachments
