---
tc_id: TC-U-Brow-085
title: Verify validation for invalid area values
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
--User on Properties page .
# Steps
1. Enter a minimum area greater than the maximum area.  
2. Enter a negative or non-numeric value in the area fields.  
3. Apply the filter.
# Expected Result
-The system prevents applying the filter and displays an appropriate validation message.
# Notes

# Attachments
