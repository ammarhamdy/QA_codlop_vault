---
tc_id: TC-LM-036
title: Quiz Validation - Create Lesson with Single Quiz Added
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
| Quizzes | 1 Quiz |

# Preconditions
- Admin on creation page.

# Steps
1. Configure the lesson with exactly 1 quiz containing 2 choices (1 correct).
2. Submit the form.

# Expected Result
- The lesson is created successfully. The student will be presented with a single-question assessment.

# Notes

# Attachments
