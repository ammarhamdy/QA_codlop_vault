---
tc_id: TC-Admin-006
title: Verify minimum and maximum length validation for the Contact US Title
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on Contact Us settings page .
# Steps
1. Enter a title with fewer than the minimum allowed characters and click Save.
2. Enter a title with the maximum allowed number of characters and save.
3. Enter a title exceeding the maximum allowed characters and save.
# Expected Result
-The system rejects titles shorter than the minimum or longer than the maximum allowed length, displays the appropriate validation message, and accepts titles within the allowed length.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*