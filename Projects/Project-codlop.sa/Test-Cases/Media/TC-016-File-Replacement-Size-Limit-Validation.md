---
tc_id: TC-Media-016
title: Verify file Replacement with size exceeding max limit
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-Media
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
-A file already exists in the Media Library.
# Steps
1. Select "Choose File"  
2. Select a file larger than the allowed size  
3. Confirm replacement
# Expected Result
-System rejects the replacement and shows a file size error message, and the original file remains unchanged.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*