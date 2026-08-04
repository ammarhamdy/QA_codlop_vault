---
tc_id: TC-A-Prop-071
title: Verify pagination resets to the first page after applying search or filters
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
-The property list contains multiple pages.
# Steps
1. Navigate to any page other than the first.  
2. Apply a search or one or more filters.
# Expected Result
-The filtered/search results are displayed starting from the **first page**, and the pagination is reset accordingly.
# Notes

# Attachments
