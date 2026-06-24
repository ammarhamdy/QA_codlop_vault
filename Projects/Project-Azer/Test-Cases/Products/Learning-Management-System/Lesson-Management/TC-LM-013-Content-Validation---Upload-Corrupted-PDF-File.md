---
tc_id: TC-LM-013
title: Content Validation - Upload Corrupted PDF File
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - negative
  - pdf-upload
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Fiqh Lesson |
| File | corrupted.pdf (0 bytes or bad EOF marker) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin has a corrupted PDF file on their machine.

# Steps
1. Select 'file' lesson type.
2. Attempt to upload 'corrupted.pdf'.
3. Complete the form and click 'Save'.

# Expected Result
- The system validation detects that the uploaded PDF is empty or corrupted, blocks creation, and prompts: 'Uploaded PDF file is invalid or corrupted.'

# Notes

# Attachments
