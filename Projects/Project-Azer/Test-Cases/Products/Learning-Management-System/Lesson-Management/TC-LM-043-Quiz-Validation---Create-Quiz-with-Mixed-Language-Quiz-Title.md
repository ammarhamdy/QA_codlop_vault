---
tc_id: TC-LM-043
title: Quiz Validation - Create Quiz with Mixed Language Quiz Title
priority: Medium
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
| Quiz[0] Title | What is the meaning of الركوع in prayer? |

# Preconditions
- Admin on creation page.

# Steps
1. Enter a mixed language string for Quiz Title.
2. Submit the form.

# Expected Result
- The quiz is successfully created and rendered with correct word order spacing.

# Notes

# Attachments
