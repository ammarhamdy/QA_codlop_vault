---
tc_id: TC-LM-066
title: Choice Image Validation - Upload Unsupported File Extension
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - choice-image
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choice 1 Image | document.pdf (application/pdf file) |

# Preconditions
- Admin on creation page.

# Steps
1. Attempt to upload a PDF file into the Choice Image field.
2. Click 'Save'.

# Expected Result
- The system blocks upload with an error: 'Allowed choice image formats: JPG, PNG, WEBP, SVG.'

# Notes

# Attachments
