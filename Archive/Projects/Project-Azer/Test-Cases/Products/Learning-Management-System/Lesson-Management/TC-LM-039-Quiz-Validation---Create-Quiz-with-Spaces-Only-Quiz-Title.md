---
tc_id: TC-LM-039
title: Quiz Validation - Create Quiz with Spaces-Only Quiz Title
priority: Medium
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
| Quiz[0] Title | "   " |

# Preconditions
- Admin on creation page.

# Steps
1. Input only spaces into the Quiz Title (Question Text) field.
2. Attempt to save.

# Expected Result
- System trims the input, flags it as empty, and displays: 'Quiz Title cannot be empty or spaces-only.'

# Notes

# Attachments
