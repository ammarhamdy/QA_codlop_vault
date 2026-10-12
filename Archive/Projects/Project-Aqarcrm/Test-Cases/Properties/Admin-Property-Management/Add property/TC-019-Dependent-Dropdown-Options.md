---
tc_id: TC-A-Prop-019
title: Verify dependent dropdowns display related options based on previous selection
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
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
-Admin is on Add property form on  Location step.
# Steps
1. Select a Region  
2. Open City dropdown  
3. Select a City  
4. Open District dropdown
# Expected Result
-City dropdown should display only cities related to the selected Region, and District dropdown should display only districts related to the selected City.
# Notes

# Attachments
