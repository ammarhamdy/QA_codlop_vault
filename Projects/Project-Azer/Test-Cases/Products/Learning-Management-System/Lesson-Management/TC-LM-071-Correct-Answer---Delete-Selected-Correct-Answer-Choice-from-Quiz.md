---
tc_id: TC-LM-071
title: Correct Answer - Delete Selected Correct Answer Choice from Quiz
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - correct-answer-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choice 1 | Option A (is_correct=1) |
| Choice 2 | Option B (is_correct=0) |

# Preconditions
- Admin on creation page.

# Steps
1. Mark Choice 1 as correct.
2. Click the 'Delete' (trash can) button next to Choice 1 to remove it from the form.
3. Attempt to click 'Save' without reselecting another correct choice.

# Expected Result
- The system detects that the quiz now has no correct answer selected, blocks submission, and displays: 'Each quiz must contain a selected correct answer.'

# Notes

# Attachments
