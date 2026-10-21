---
tc_id: TC-LM-016
title: Content Validation - Upload Image File in PDF Field
priority: Medium
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Image test |
| File | lesson_cover.png (image/png) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin on creation page.

# Steps
1. In 'file' content upload, select and upload 'lesson_cover.png'.
2. Submit the form.

# Expected Result
- System rejects the file, showing: 'Invalid file format. Please upload a PDF document.'

# Notes

# Attachments
