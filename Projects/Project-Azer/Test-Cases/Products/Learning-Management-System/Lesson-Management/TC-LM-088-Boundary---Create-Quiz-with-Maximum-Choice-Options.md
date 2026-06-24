---
tc_id: TC-LM-088
title: Boundary - Create Quiz with Maximum Choice Options
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| Choices | Exactly 20 choices in a single quiz (limit) |

# Preconditions
- Admin on creation page.

# Steps
1. Add 20 choices to a single quiz.
2. Save the lesson.

# Expected Result
- The quiz is successfully saved with all 20 choices.

# Notes

# Attachments
