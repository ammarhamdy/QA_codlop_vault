---
tc_id: TC-LM-048
title: Quiz Image Validation - Upload Extremely Large Image
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-image
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz[0] Title | Big Image Quiz |
| Quiz Image | giant_diagram.png (15.5 MB file, limit: 5MB) |

# Preconditions
- Image upload file size is capped at 5MB.

# Steps
1. Attempt to upload a 15.5 MB PNG image in the Quiz Image field.
2. Submit the form.

# Expected Result
- The system blocks the upload immediately, showing: 'Image size exceeds the 5MB limit. Please upload a smaller image.'

# Notes

# Attachments
