---
tc_id: TC-LM-069
title: Correct Answer - Multiple Correct Answers Selected
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
| Quiz Title | Salat pillars |
| Choice 1 | أ) الركوع (is_correct=1) |
| Choice 2 | ب) السجود (is_correct=1) |
| Choice 3 | ج) السواك (is_correct=0) |

# Preconditions
- The system only allows a single correct answer per quiz (radio-button behavior or business validation).

# Steps
1. Select both Choice 1 and Choice 2 as correct.
2. Click 'Save'.

# Expected Result
- If UI uses radio buttons, selecting Choice 2 automatically deselects Choice 1. If checkboxes are used and submitted via API, server-side validation rejects it with: 'Only one choice can be marked as correct for this quiz type.'

# Notes

# Attachments
