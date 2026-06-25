---
tc_id: TC-LM-038
title: Quiz Validation - Create Quiz with Empty Quiz Title
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 70 |
| Quiz[0] Title | Empty ("") |

# Preconditions
- Admin on creation page.

# Steps
1. In 'Quiz Title (Question Text)', leave the text field completely blank.
2. Add choices and select a correct one.
3. Click 'Save'.

# Expected Result
- Submission is blocked. System shows: 'Quiz Title (Question Text) cannot be empty.'

# Notes

# Attachments
