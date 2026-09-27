---
tc_id: TC-Media-015
title: Verify file Replacement with invalid format
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Media
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-A file already exists in the Media Library.
# Steps
1. Select "Choose File"  
2. Select a file with an unsupported format  
3. Confirm replacement
# Expected Result
-System rejects the replacement and shows a validation error.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*