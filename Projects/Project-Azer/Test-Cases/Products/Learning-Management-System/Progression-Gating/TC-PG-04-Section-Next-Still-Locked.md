---
tc_id: TC-PG-04
title: Section N+1 Remains Locked After Failing Exam N
priority: High
status: Ready
type: Functional
linked_requirement: REQ-003
tags:
  - test-case
  - progression-gating
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Program ID | PROG-001 |
| Exam 1 Status | Failed |

# Preconditions
- User is logged in as a Student.
- Program PROG-001 is purchased.

# Steps
1. Navigate to Exam 1.
2. Complete the exam and submit it.
3. Ensure the result is "Failed".
4. Navigate back to the curriculum view and attempt to access Reading Section 2.

# Expected Result
- Reading Section 2 remains locked and inaccessible.
- User is presented with a "Retake Exam" option for Exam 1.

# Notes

# Attachments
