---
tc_id: TC-LM-067
title: Correct Answer - No Correct Answer Selected
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - correct-answer-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Prayer pillar quiz |
| Choice 1 | أ) دعاء الاستفتاح (is_correct=0) |
| Choice 2 | ج) الركوع (is_correct=0) |

# Preconditions
- Admin is creating a quiz but leaves all 'is_correct' checkboxes/radio buttons unselected.

# Steps
1. Fill in 2 choices.
2. Leave all choices marked as 'is_correct = 0' (no choice checked as correct).
3. Click 'Save'.

# Expected Result
- System blocks saving, highlighting the quiz and displaying: 'You must select at least one correct answer for each quiz.'

# Notes

# Attachments
