---
tc_id: TC-LM-089
title: Boundary - Upload PDF File Exactly at Size Limit
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
  - pdf-upload
---

# Test Data
| Field | Value |
| ----- | ----- |
| File | exact_limit.pdf (Exactly 20,000,000 bytes, limit: 20MB) |

# Preconditions
- File size limit is set to 20MB (20,000,000 bytes).

# Steps
1. Upload a PDF file that is exactly at the limit.
2. Save the lesson.

# Expected Result
- The file is uploaded successfully because it does not exceed the limit.

# Notes

# Attachments
