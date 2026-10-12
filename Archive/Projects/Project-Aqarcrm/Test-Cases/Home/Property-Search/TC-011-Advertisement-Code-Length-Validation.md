---
tc_id: TC-P-Search-011
title: Verify the Advertisement Code field does not accept more than the maximum allowed length
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006-Home
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
-User is on the Home page.
# Steps
1. Enter an advertisement code that exceeds the maximum allowed number of characters.  
2. Observe the input field.
# Expected Result
-The field does not accept more than the maximum allowed length, or an appropriate validation message is displayed.
# Notes

# Attachments
