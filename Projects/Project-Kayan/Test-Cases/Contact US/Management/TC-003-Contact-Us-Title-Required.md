---
tc_id: TC-Admin-003
title: Verify Contact Us Title is Required
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
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
-Contact Us Settings section is expanded.
# Steps
1. Clear the Title field  
2. Leave the Description field empty  
3. Click Save
# Expected Result
-Validation message is displayed indicating that Title is required, and changes are not saved. Description does not display any validation error because it is optional.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*