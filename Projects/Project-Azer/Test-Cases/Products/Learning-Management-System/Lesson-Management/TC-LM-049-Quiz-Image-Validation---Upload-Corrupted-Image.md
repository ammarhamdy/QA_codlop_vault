---
tc_id: TC-LM-049
title: Quiz Image Validation - Upload Corrupted Image
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-image
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz[0] Title | Corrupted Image Quiz |
| Quiz Image | corrupted.jpg (empty binary or invalid header bytes) |

# Preconditions
- Admin has a corrupted image file.

# Steps
1. Try uploading 'corrupted.jpg' in the Quiz Image field.
2. Click 'Save'.

# Expected Result
- The system processes the image bytes, detects that it is corrupted/invalid, and displays: 'Uploaded image file is corrupted or invalid.'

# Notes

# Attachments
