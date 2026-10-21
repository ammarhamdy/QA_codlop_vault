---
tc_id: TC-PG-03
title: Section N+1 Unlocked After Passing Exam N
priority: High
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
| Exam 1 Status | Passed |

# Preconditions
- User is logged in as a Student.
- Program PROG-001 is purchased.
- User has completed Reading Section 1.

# Steps
1. Navigate to Exam 1.
2. Complete the exam and submit it.
3. Ensure the result is "Passed".
4. Navigate back to the curriculum view and attempt to access Reading Section 2.

# Expected Result
- Upon passing Exam 1, Reading Section 2 is automatically unlocked.
- User can now click and enter Reading Section 2.

# Notes

# Attachments
