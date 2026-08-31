---
tc_id: TC-Admin-008
title: Verify Title with whitespace-only value
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
-Admin is on Contact Us settings page.
# Steps
1. Enter only spaces in Title  
2. Click Save.
# Expected Result
-Title is rejected and required/invalid value validation is displayed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*