---
tc_id: TC-Exp-004
title: Verify required validation for Experts section title
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
-Admin is logged in & on the Experts section .
# Steps
1. Clear the title field.  
2. Leave the description field empty or unchanged.  
3. Click Save.
# Expected Result
-A required validation message is displayed for the title field, and the data is not saved. The description field can remain empty.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*