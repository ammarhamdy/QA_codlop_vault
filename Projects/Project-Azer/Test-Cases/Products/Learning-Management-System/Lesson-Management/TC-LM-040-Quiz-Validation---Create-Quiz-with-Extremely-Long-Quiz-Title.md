---
tc_id: TC-LM-040
title: Quiz Validation - Create Quiz with Extremely Long Quiz Title
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - quiz-validation
  - boundary
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Salat 1 |
| File | salat.pdf |
| Quiz Title | Salat Quiz |
| Success Rate | 70 |
| Quiz[0] Title | A string of exactly 1,000 characters describing a very detailed scenario. |

# Preconditions
- Admin on creation page.

# Steps
1. Enter a 1,000-character long scenario question in Quiz Title.
2. Add valid answers and click 'Save'.

# Expected Result
- The quiz is saved successfully, and displays completely on the student page with clean layout wrapping.

# Notes

# Attachments
