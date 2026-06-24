---
tc_id: TC-LM-001
title: Create Lesson with Empty Title
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Empty ("") |
| Lesson Content | Valid PDF file upload |
| Question Title | Valid Title |
| Success Rate | 70 |
| Quizzes | 1 Quiz with 2 Choices (1 Correct) |

# Preconditions
- User is logged in as an Admin and on the Lesson Creation page.

# Steps
1. Leave the Lesson Title field completely empty.
2. Add a subtitle and valid PDF content.
3. Configure a valid Question Set with 1 Quiz and 2 Choices.
4. Click 'Save' or 'Submit'.

# Expected Result
- System prevents submission and highlights 'Lesson Title' as a required field with a validation message: 'Lesson Title is required.'

# Notes

# Attachments
