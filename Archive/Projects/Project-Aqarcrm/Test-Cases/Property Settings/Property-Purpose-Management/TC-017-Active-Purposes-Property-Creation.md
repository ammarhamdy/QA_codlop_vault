---
tc_id: TC-Purp-017
title: Verify Only Active Property Purposes Are Available During Property Creation
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
-At least one active, one inactive, and one deleted property purpose exist.
# Steps
1. Navigate to properties & click on add property.  
2. Open the **Property Purpose** dropdown.  
3. Review the available purposes.
# Expected Result
-Only **active property purposes** are displayed and available for selection. **Inactive and deleted property purposes** should not appear in the dropdown.
# Notes

# Attachments
