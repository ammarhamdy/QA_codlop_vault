---
tc_id: TC-LM-094
title: Data Integrity - Verify Uploaded Quiz/Choice Images Persist with Correct URLs
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - data-integrity
---

# Test Data
| Field | Value |
| ----- | ----- |
| Image File | quiz_pic.png |

# Preconditions
- Admin uploads an image during quiz creation.

# Steps
1. Upload 'quiz_pic.png' as a quiz image.
2. Save the lesson.
3. Query the API for the quiz image URL and send an HTTP GET request to that URL.

# Expected Result
- The image is loaded successfully (returns HTTP 200) and matches the binary content/dimensions of the uploaded file.

# Notes

# Attachments
