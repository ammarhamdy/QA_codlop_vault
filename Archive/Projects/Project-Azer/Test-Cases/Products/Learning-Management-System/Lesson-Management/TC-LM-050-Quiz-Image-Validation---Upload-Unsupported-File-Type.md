---
tc_id: TC-LM-050
title: Quiz Image Validation - Upload Unsupported File Type
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
| Quiz[0] Title | Wrong File Quiz |
| Quiz Image | presentation.pptx (PowerPoint file) |

# Preconditions
- Admin on creation page.

# Steps
1. Attempt to upload 'presentation.pptx' into the Quiz Image upload field.
2. Click 'Save'.

# Expected Result
- The system blocks the upload, showing an error: 'Invalid image format. Allowed formats: JPG, PNG, WEBP, SVG.'

# Notes

# Attachments
