---
tc_id: TC-SEE-04
title: Assessment Passing Threshold and Next Unit Access Unlock
priority: High
status: Ready
type: Functional
linked_requirement: REQ-005
tags:
  - test-case
  - progression-unlock
  - threshold-validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| User Role | Student |
| Unit ID | UNIT-001 |
| Total Quizzes | 4 |
| Correct Answers Submitted | 2 |
| Score Percentage | 50% (Passed) |

# Preconditions
- Student is on the single-page quiz interface of UNIT-001.
- Unit-001 is the current active learning unit.
- UNIT-002 is locked.

# Steps
1. Answer exactly 2 out of 4 quizzes correctly (giving a score of exactly 50%, which meets the passing threshold).
2. Click the global "Submit" button on the page.
3. Observe the system message and check status of UNIT-002.
4. Attempt to click and enter UNIT-002.

# Expected Result
- The system displays a success/passed message confirming the student passed the assessment.
- UNIT-002 is immediately unlocked in the curriculum sidebar/menu.
- The student can click and successfully enter UNIT-002 to access its content.

# Notes

# Attachments
