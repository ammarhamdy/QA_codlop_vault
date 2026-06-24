---
tc_id: TC-LM-093
title: Data Integrity - Verify Selected Correct Answer Persists Correctly
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - data-integrity
---

# Test Data
| Field | Value |
| ----- | ----- |
| Correct Choice | Choice 2 is_correct=1 |

# Preconditions
- Admin creates a lesson with a quiz.

# Steps
1. Save a quiz with Choice 2 as the correct answer.
2. Retrieve the quiz via GET request or DB query.
3. Check the `is_correct` field of the choices.

# Expected Result
- Choice 2 is marked as correct (1), while all other choices are marked as incorrect (0).

# Notes

# Attachments
