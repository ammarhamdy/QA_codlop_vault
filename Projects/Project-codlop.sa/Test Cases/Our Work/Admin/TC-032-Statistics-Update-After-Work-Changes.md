---
tc_id: TC-Work-032
title: Verify statistics update after adding or modifying a work
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-001-Our-Work
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Works exist.
# Steps
1. Note the current statistics counts  
2. Add a new work  
3. Change the work status and/or Featured status  
4. Save the changes  
5. Return to the works list
# Expected Result
-The **Total, Published/Draft, and Featured** counts should be updated correctly according to the changes made.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*