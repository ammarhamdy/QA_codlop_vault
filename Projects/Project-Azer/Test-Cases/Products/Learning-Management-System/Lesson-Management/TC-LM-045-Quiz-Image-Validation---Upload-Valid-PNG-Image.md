---
tc_id: TC-LM-045
title: Quiz Image Validation - Upload Valid PNG Image
priority: High
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
| Quiz Image | posture.png (valid image/png, 1.2 MB) |

# Preconditions
- Admin on creation page.

# Steps
1. Upload a valid PNG image in the Quiz Image field.
2. Submit and save.

# Expected Result
- The PNG file uploads successfully, maintains transparency details, and is preserved on-screen.

# Notes

# Attachments
