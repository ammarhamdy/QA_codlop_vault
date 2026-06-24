---
tc_id: TC-SEE-03
title: Assessment Failure Gating and Required Retake Workflow
priority: High
status: Ready
type: Functional
linked_requirement: REQ-005
tags:
  - test-case
  - failure-handling
  - retry-mechanism
---

# Test Data
| Field                     | Value        |
| ------------------------- | ------------ |
| User Role                 | Student      |
| Unit ID                   | UNIT-001     |
| Total Quizzes             | 4            |
| Correct Answers Submitted | 1            |
| Score Percentage          | 25% (Failed) |

# Preconditions
- Student is on the single-page quiz interface of UNIT-001.
- Unit-001 is the current active learning unit.
- UNIT-002 is locked.

# Steps
1. Answer exactly 1 out of 4 quizzes correctly (giving a score of 25%, which is < 50%).
2. Click the global "Submit" button on the page.
3. Observe the result on-screen and attempts to access UNIT-002.

# Expected Result
- The system displays a failure/retake message stating that the student has not passed the 50% threshold.
- UNIT-002 remains strictly locked.
- The student is presented with a retake option. The student must re-answer all 4 quizzes from the first quiz to the last quiz to submit again.

# Notes

# Attachments
