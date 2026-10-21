---
tc_id: TC-LM-046
title: Quiz Image Validation - Upload Valid WEBP Image
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-image
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz[0] Title | Postures |
| Quiz Image | posture.webp (valid image/webp, 450 KB) |

# Preconditions
- Admin on creation page.

# Steps
1. Upload a modern WEBP format image in the Quiz Image field.
2. Click 'Save'.

# Expected Result
- The system accepts and saves the WEBP image successfully.

# Notes

# Attachments
