---
tc_id: TC-LM-047
title: Quiz Image Validation - Upload Valid SVG Image
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
| Quiz[0] Title | Vector diagram |
| Quiz Image | posture.svg (valid image/svg+xml, 25 KB) |

# Preconditions
- Admin on creation page. SVG images are allowed.

# Steps
1. Upload an SVG vector diagram in the Quiz Image field.
2. Save the lesson.

# Expected Result
- The system accepts the SVG file, sanitizes it (to prevent embedded script/XSS), and stores it successfully.

# Notes

# Attachments
