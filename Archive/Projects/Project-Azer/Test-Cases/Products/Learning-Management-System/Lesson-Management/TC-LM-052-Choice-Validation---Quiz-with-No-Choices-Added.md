---
tc_id: TC-LM-052
title: Choice Validation - Quiz with No Choices Added
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - choice-validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quiz Title | No choices quiz |
| Choices | 0 choices added |

# Preconditions
- Admin on creation page.

# Steps
1. Add a Quiz question.
2. Remove all choice options so that no text fields are present under Choices.
3. Click 'Save'.

# Expected Result
- The system prevents submission, displaying an error: 'Each quiz must contain at least 2 choices.'

# Notes

# Attachments
