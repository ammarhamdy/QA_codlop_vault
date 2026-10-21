---
tc_id: TC-LM-002
title: Create Lesson with Spaces-Only Title
priority: Medium
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | "   " (three spaces) |
| Lesson Content | Valid PDF file upload |
| Question Title | Valid Title |
| Success Rate | 70 |
| Quizzes | 1 Quiz with 2 Choices (1 Correct) |

# Preconditions
- User is logged in as an Admin and on the Lesson Creation page.

# Steps
1. Enter only spaces in the 'Lesson Title' field.
2. Populate other fields with valid data.
3. Click 'Save' or 'Submit'.

# Expected Result
- System trims the input, detects it as empty, blocks submission, and displays a validation error: 'Lesson Title cannot be empty or spaces-only.'

# Notes

# Attachments
