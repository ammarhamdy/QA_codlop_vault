---
tc_id: TC-LM-042
title: Quiz Validation - Create Quiz with English Quiz Title
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 70 |
| Quiz[0] Title | Which of the following is a pillar of Salat? |

# Preconditions
- Admin on creation page.

# Steps
1. Enter an English string for Quiz Title.
2. Submit the form.

# Expected Result
- The quiz is saved and rendered correctly in Left-to-Right format.

# Notes

# Attachments
