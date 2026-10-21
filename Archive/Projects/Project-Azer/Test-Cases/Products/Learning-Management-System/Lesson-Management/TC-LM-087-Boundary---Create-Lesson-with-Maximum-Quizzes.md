---
tc_id: TC-LM-087
title: Boundary - Create Lesson with Maximum Quizzes
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - boundary
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Quizzes | Exactly 100 quizzes in a single lesson (limit) |

# Preconditions
- A single lesson's quiz set is capped at 100 quizzes.

# Steps
1. Click 'Add Quiz' and configure 100 questions.
2. Populate required answers and correct markers for each.
3. Click 'Save'.

# Expected Result
- The lesson is created successfully. All 100 questions are saved in a single transactional write.

# Notes

# Attachments
