---
tc_id: TC-LM-017
title: Content Validation - Upload Empty PDF File
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
| Lesson Title | Empty File Test |
| File | empty_doc.pdf (0 bytes size) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin on creation page.

# Steps
1. Attempt to upload 'empty_doc.pdf' (0 bytes).
2. Submit the form.

# Expected Result
- System validates the file size, rejects the file, and displays: 'Uploaded file cannot be empty.'

# Notes

# Attachments
