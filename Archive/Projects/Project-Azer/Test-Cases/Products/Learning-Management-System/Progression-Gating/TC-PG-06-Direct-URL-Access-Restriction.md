---
tc_id: TC-PG-06
title: Verify User Cannot Skip Locked Sections Using Direct URL
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: REQ-005
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field         | Value    |
| ------------- | -------- |
| User Role     | Student  |
| Unit ID       | UNIT-001 |
| Total Quizzes | 4        |

# Preconditions
- Student is enrolled in the program.
- UNIT-001 exam has been successfully passed.
- UNIT-002 has not been completed or passed.
- UNIT-003 is locked according to the program progression rules.
- Student is logged in to the platform
# Steps
1. Copy the URL of UNIT-003.
2. Paste the URL directly into the browser address bar.
3. Press Enter
# Expected Result
Student cannot access UNIT-003 until UNIT-002 is completed and passed.
# Notes

# Attachments
