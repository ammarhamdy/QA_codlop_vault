---
tc_id: TC-LM-068
title: Correct Answer - Exactly One Correct Answer Selected
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - correct-answer-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Prayer pillar quiz |
| Choice 1 | أ) دعاء الاستفتاح (is_correct=0) |
| Choice 2 | ج) الركوع (is_correct=1) |

# Preconditions
- Admin on creation page.

# Steps
1. Select Choice 2 as correct ('is_correct = 1').
2. Submit the form.

# Expected Result
- The lesson is created successfully. The quiz will function as a standard single-correct multiple-choice question.

# Notes

# Attachments
