---
tc_id: TC-PATT-017
title: Verify Only Active Attribute Are Available During Property Creation
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
-At least one active, one inactive, and one deleted property Attribute exist for the selected property type.
# Steps
1. Navigate to **Add Property**.  
2. Select the relevant **Property Type**.  
3. Open the **Property Attributes** selection.  
4. Review the available Attributes.
# Expected Result
-Only **active property Attributes** associated with the selected property type are displayed and available for selection. **Inactive and deleted Attributes** do not appear.
# Notes

# Attachments
