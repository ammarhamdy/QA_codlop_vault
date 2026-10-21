---
tc_id: TC-LM-055
title: Choice Validation - Quiz with More than 2 Choices
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | Multiple choice quiz |
| Choices | 4 Choices: 'A', 'B', 'C' (Correct), 'D' |

# Preconditions
- Admin on creation page.

# Steps
1. Click 'Add Choice' to configure 4 distinct choices.
2. Fill in all texts, select one correct answer, and submit.

# Expected Result
- The lesson is created successfully, preserving all 4 choices.

# Notes

# Attachments
