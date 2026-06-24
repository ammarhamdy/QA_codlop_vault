---
tc_id: TC-LM-037
title: Quiz Validation - Create Lesson with Multiple Quizzes Added
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 70 |
| Quizzes | 5 Quizzes |

# Preconditions
- Admin on creation page.

# Steps
1. Click 'Add Quiz' multiple times to add 5 distinct quiz questions.
2. Configure 2-4 choices for each quiz and mark a correct answer for each.
3. Click 'Save'.

# Expected Result
- The lesson is created successfully, persisting all 5 quizzes inside the question set.

# Notes

# Attachments
