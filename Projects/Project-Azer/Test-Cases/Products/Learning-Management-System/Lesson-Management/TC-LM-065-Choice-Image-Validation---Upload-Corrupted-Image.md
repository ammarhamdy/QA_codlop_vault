---
tc_id: TC-LM-065
title: Choice Image Validation - Upload Corrupted Image
priority: Medium
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
| Choice 1 Image | broken.png (corrupted PNG header) |

# Preconditions
- Admin has a corrupted image.

# Steps
1. Upload 'broken.png' in the Choice Image field.
2. Save form.

# Expected Result
- The system validates file bytes, rejects it, and displays: 'Choice image file is corrupted or invalid.'

# Notes

# Attachments
