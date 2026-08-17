---
tc_id: TC-PFac-015
title: Verify Only Active Facades Are Available During Property Creation
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
-At least one active, one inactive, and one deleted facade exist.
# Steps
1. Navigate to **Add Property**.  
2. Open the **Property Facade** dropdown.  
3. Review the available facades.
# Expected Result
-Only **active property facades** are displayed and available for selection. Inactive and deleted facades do not appear.
# Notes

# Attachments
