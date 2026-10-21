---
tc_id: TC-SEE-01
title: Single-Page Multiple-Choice Quiz Layout and Submission
priority: High
status: Ready
type: Functional
linked_requirement: REQ-005
tags:
  - test-case
  - quiz-execution
  - mcq
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Unit ID | UNIT-001 |
| Number of Quizzes | 3 (MCQs) |

# Preconditions
- Student is logged in and has access to Unit-001.
- Unit-001 has been configured with 3 MCQ quizzes.

# Steps
1. Navigate to the Quiz section of Unit-001.
2. Verify the representation and layout of the quizzes.
3. Check for the presence of answers and submission elements.

# Expected Result
- All 3 quizzes are displayed on the exact same page.
- Each quiz is formatted as a Multiple Choice Question (MCQ).
- Only one global "Submit" button is displayed on the entire page.

# Notes

# Attachments
