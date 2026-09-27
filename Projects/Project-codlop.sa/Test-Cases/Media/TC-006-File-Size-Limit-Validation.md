---
tc_id: TC-Media-006
title: Verify Uploading file exceeding max size limit
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
-Admin is on the Media Library page.
# Steps
1. Click "Upload Files"  
2. Select a file larger than the allowed size  
3. Confirm upload
# Expected Result
-System rejects the upload and shows a file size error message.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*