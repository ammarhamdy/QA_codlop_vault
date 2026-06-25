---
tc_id: TC-LM-041
title: Quiz Validation - Create Quiz with Arabic Quiz Title
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
| Lesson Title | أركان الصلاة |
| File | salat.pdf |
| Quiz Title | أسئلة الفهم |
| Success Rate | 70 |
| Quiz[0] Title | أي من الآتي يُعد ركنًا من أركان الصلاة؟ |

# Preconditions
- Admin on creation page.

# Steps
1. Input Arabic text for the Quiz Title: 'أي من الآتي يُعد ركنًا من أركان الصلاة؟'.
2. Fill in Arabic choice texts and click 'Save'.

# Expected Result
- The quiz is successfully created. Text displays properly in Right-to-Left format.

# Notes

# Attachments
