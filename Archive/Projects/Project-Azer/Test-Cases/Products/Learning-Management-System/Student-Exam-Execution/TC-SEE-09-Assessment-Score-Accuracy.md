---
tc_id: TC-SEE-09
title: Assessment Score Calculation Accuracy
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-005
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value    |
| ------------------------- | -------- |
| User Role                 | Student  |
| Unit ID                   | UNIT-001 |
| Total Quizzes             | 4        |
| Correct Answers Submitted | 3        |
| Score Percentage          | 75%      |

# Preconditions
- Student is currently performing the quizzes for the unit, UNIT-001
# Steps
1. Open the quiz.  
2. Answer a known number of questions correctly and incorrectly.  
3. Submit the quiz.  
4. Review the displayed score and status.
# Expected Result
The system calculates the score accurately , The assessment status is displayed.
# Notes

# Attachments
