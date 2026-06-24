---
tc_id: TC-LM-044
title: Quiz Image Validation - Upload Valid JPG Image
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-image
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz[0] Title | Identify this posture: |
| Quiz Image | posture.jpg (valid image/jpeg, 800 KB) |

# Preconditions
- Admin on creation page.

# Steps
1. In the first Quiz, click 'Upload Quiz Image'.
2. Select a valid 'posture.jpg' file.
3. Save the lesson.

# Expected Result
- The image is successfully uploaded, processed (generating optimized thumbnails if applicable), and displayed above the quiz title on both Admin and Student dashboards.

# Notes

# Attachments
