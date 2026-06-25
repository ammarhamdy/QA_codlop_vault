---
tc_id: TC-LM-064
title: Choice Image Validation - Upload Extremely Large Image
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - choice-image
  - boundary
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choice 1 Image | huge_choice.jpg (8.5 MB, limit: 2MB) |

# Preconditions
- Choice image size is capped at 2MB.

# Steps
1. Try uploading a 8.5 MB image in the Choice Image field.
2. Submit form.

# Expected Result
- The system blocks the upload instantly, displaying: 'Choice image exceeds the 2MB limit.'

# Notes

# Attachments
