---
tc_id: TC-A-Prop-072
title: Verify property is removed from filtered results when its updated status no longer matches the applied filter
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin has applied a filter that includes the selected property.
# Steps
1. Apply the **Property Status** filter (e.g., **Available**).  
2. Verify that the target property appears in the filtered results.  
3. Change the property's status from **Available** to **Reserved**, **Sold**, or **Rented**.
# Expected Result
-The property status is updated successfully, and the property is automatically removed from the filtered results because it no longer matches the selected **Property Status** filter.
# Notes

# Attachments
