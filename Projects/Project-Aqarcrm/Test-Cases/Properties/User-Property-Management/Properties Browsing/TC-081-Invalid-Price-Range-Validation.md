---
tc_id: TC-U-Brow-081
title: Verify validation for invalid price values
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
-User on properties page.
# Steps
1. Enter a minimum price greater than the maximum price.  
2. Enter a negative value or non-numeric characters in the price fields.
3. Apply the filter.
# Expected Result
-The system prevents applying the filter and displays an appropriate validation message for invalid price values.
# Notes

# Attachments
