---
tc_id: TC-SEE-06
title: Verify Quiz Result Persistence After User Logout and Login
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
| Field                     | Value                            |
| ------------------------- | -------------------------------- |
| User Role                 | Student                          |
| Module ID                 | MOD-001                          |
| Total Units in Module     | 3 (UNIT-001, UNIT-002, UNIT-003) |
| Current Unit              | UNIT-001                         |
| Quizzes in UNIT-003       | 4 MCQs                           |
| Correct Answers Submitted | 2                                |
| Score Percentage          | 50% (Passed)                     |

# Preconditions
User has successfully completed a quiz
# Steps
1. Complete and submit the quiz.  
2. Verify result is displayed.  
3. Logout.  
4. Login again.  
5. Navigate to the completed unit.
# Expected Result
Quiz result, completion status, and unlocked content remain saved after re-login.
# Notes

# Attachments
