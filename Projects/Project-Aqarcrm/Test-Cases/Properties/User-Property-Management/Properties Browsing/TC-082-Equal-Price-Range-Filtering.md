---
tc_id: TC-U-Brow-082
title: Verify filtering properties when the minimum and maximum price are equal
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Properties exist with the specified price.
# Steps
1. Enter the same value in both **Minimum Price** and **Maximum Price** fields (e.g., 500,000).  
2. Apply the filter.
# Expected Result
-The system displays only properties with the exact specified price, or behaves according to the defined business rules without displaying validation errors.
# Notes

# Attachments
