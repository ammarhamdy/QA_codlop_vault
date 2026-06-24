---
tc_id: TC-SEE-08
title: Assessment Result Display Accuracy After Retake
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: REQ-005
tags:
  - test-case
---

# Test Data
| Field                     | Value        |
| ------------------------- | ------------ |
| User Role                 | Student      |
| Unit ID                   | UNIT-001     |
| Total Quizzes             | 2            |
| Correct Answers Submitted | 1,3          |
| Score Percentage          | 60% (Passed) |

# Preconditions
- Student is currently performing the quizzes for the unit, UNIT-001
# Steps
1. Submit quiz with a failing score.
2.  Verify assessment result is displayed as Failed.
3. Retake the assessment.
4.  Submit assessment with a passing score.
5.  observe assessment result.
# Expected Result
- Latest assessment result is displayed correctly.
- Assessment status is updated to Passed.
- Related learning progression is updated according to the latest result.
# Notes

# Attachments
