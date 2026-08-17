---
tc_id: TC-PStat-015
title: Verify Only Active Property Statuses Are Available During Property Creation
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
-At least one active, one inactive, and one deleted property status exist.
# Steps
1. Navigate to **Add Property**.  
2. Open the **Property Status** dropdown.  
3. Review the available statuses.
# Expected Result
-Only **active property statuses** are displayed and available for selection. Inactive and deleted statuses do not appear.
# Notes

# Attachments
