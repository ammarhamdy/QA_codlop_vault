---
tc_id: TC-LM-004
title: Create Lesson with Maximum Title Length
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | A string of exactly 255 'A' characters |
| Lesson Content | Valid PDF file upload |
| Question Title | Valid Title |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Input a 255-character string into the 'Lesson Title' field.
2. Complete other fields with valid data.
3. Click 'Save' or 'Submit'.

# Expected Result
- The lesson is created successfully without any truncation in the database or UI.

# Notes

# Attachments
