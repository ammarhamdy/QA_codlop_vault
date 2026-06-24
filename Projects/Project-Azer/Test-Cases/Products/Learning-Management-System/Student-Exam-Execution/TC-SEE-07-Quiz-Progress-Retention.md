---
tc_id: TC-SEE-07
title: Quiz Progress Retention After Session Interruption
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
| Field                 | Value                            |
| --------------------- | -------------------------------- |
| User Role             | Student                          |
| Module ID             | MOD-001                          |
| Total Units in Module | 3 (UNIT-001, UNIT-002, UNIT-003) |
| Current Unit          | UNIT-001                         |
| Quizzes in UNIT-001   | 5 MCQs                           |

# Preconditions
- Student is currently performing the quizzes for the unit, UNIT-001
# Steps
1. Start the quiz.  
2. Answer some questions.  
3. Refresh the page or disconnect/reconnect the internet.  
4. Return to the quiz
# Expected Result
Previously answered questions remain saved and displayed correctly. User resumes the quiz from the last saved progress without losing answers. Quiz can be submitted normally after completion.
# Notes

# Attachments
