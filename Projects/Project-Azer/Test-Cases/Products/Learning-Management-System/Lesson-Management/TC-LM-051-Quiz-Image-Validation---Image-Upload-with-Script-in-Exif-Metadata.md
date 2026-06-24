---
tc_id: TC-LM-051
title: Quiz Image Validation - Image Upload with Script in Exif Metadata
priority: Medium
status: Ready
type: Security
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-image
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz[0] Title | Security check |
| Quiz Image | xss_exif.jpg (contains <script>alert(1)</script> in its EXIF user-comment field) |

# Preconditions
- Admin attempts to upload an image with injection in the metadata.

# Steps
1. Upload 'xss_exif.jpg' as the quiz image.
2. Save the lesson.
3. View the lesson in the student dashboard where image metadata might be parsed or output.

# Expected Result
- The server either strips EXIF metadata entirely during compression/processing, or escapes EXIF metadata output, ensuring no scripts can execute.

# Notes

# Attachments
