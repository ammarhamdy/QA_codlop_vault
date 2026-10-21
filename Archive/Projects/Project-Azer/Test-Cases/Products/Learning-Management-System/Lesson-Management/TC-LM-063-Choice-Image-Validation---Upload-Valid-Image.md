---
tc_id: TC-LM-063
title: Choice Image Validation - Upload Valid Image
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - choice-image
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choice 1 Text | Option A |
| Choice 1 Image | option_a.png (valid image/png, 200 KB) |

# Preconditions
- Admin on creation page.

# Steps
1. Under Choice 1, click 'Upload Choice Image'.
2. Select a valid 'option_a.png' file.
3. Save the lesson.

# Expected Result
- The image is successfully uploaded, associated with Choice 1, and renders next to the Choice 1 text option for the student.

# Notes

# Attachments
