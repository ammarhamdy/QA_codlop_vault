---
tc_id: TC-PG-05
title: Section N+1 Unlocked After Successful Retake of Exam N
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-003
tags:
  - test-case
  - progression-gating
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Exam 1 Sequence | Fail -> Pass |

# Preconditions
- User is logged in as a Student.
- User has previously failed Exam 1 and Section 2 is locked.

# Steps
1. Click on the "Retake Exam" option for Exam 1.
2. Complete the exam and submit it.
3. Ensure the result is now "Passed".
4. Attempt to access Reading Section 2.

# Expected Result
- Upon the successful retake and passing of Exam 1, Reading Section 2 is unlocked.
- User can now access Reading Section 2.

# Notes

# Attachments
