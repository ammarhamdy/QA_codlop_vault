---
tc_id: TC-LM-035
title: Quiz Validation - Create Lesson with No Quizzes Added
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
| Lesson Title | No Quiz Test |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 70 |
| Quizzes | 0 Quizzes |

# Preconditions
- Admin on creation page.

# Steps
1. Complete Lesson Title and PDF file upload.
2. In the Question Set section, do not add any quiz fields (remove default quiz if any exists).
3. Attempt to save the lesson.

# Expected Result
- The system prevents creation, showing: 'A lesson must contain a Question Set with at least one quiz.'

# Notes

# Attachments
