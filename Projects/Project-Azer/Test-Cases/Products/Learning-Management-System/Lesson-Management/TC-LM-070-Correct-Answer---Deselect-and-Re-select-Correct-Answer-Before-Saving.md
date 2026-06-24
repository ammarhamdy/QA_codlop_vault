---
tc_id: TC-LM-070
title: Correct Answer - Deselect and Re-select Correct Answer Before Saving
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - correct-answer-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choice 1 | is_correct=1 -> is_correct=0 |
| Choice 2 | is_correct=0 -> is_correct=1 |

# Preconditions
- Admin on creation page.

# Steps
1. Select Choice 1 as correct.
2. Change mind and select Choice 2 as correct (Choice 1 gets deselected).
3. Submit the form.

# Expected Result
- The lesson is saved successfully. Choice 2 is recorded as the sole correct answer in the database.

# Notes

# Attachments
