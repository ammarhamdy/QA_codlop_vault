---
tc_id: TC-U-Brow-067
title: Verify filter behavior when no properties are available or no properties match the selected filter
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
-No properties exist in the system **or** no properties match the selected filter.
# Steps
1. Open the Properties page.  
2. Select any quick filter (Sale, Rent, or Daily Rent).
# Expected Result
-No properties are displayed, and an appropriate empty-state message is shown without any system errors.
# Notes

# Attachments
