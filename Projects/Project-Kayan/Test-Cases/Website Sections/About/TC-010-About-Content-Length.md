---
tc_id: TC-About-010
title: Verify length validation for About section title and description
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: " US-003-Website-Sections"
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
-Admin is logged in & on the About section .
# Steps
1. Enter a value shorter than the minimum allowed length in the title & description field.  
2. Enter a value exceeding the maximum allowed length in the title & description field.  
3. 2. Enter  title & description with the maximum allowed number of characters and save.
4. Click Save after each invalid input.
# Expected Result
-The system should display the appropriate length validation message for each value that is below the minimum or exceeds the maximum allowed length, and invalid data should not be saved. Valid values within the allowed length should be accepted successfully.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*