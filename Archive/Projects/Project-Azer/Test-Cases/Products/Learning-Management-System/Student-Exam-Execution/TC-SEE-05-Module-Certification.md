---
tc_id: TC-SEE-05
title: Module Certificate Issuance upon All Unit Completions
priority: High
status: Ready
type: Functional
linked_requirement: REQ-005
tags:
  - test-case
  - module-completion
  - certification
---

# Test Data
| Field                     | Value                            |
| ------------------------- | -------------------------------- |
| User Role                 | Student                          |
| Module ID                 | MOD-001                          |
| Total Units in Module     | 3 (UNIT-001, UNIT-002, UNIT-003) |
| Current Unit              | UNIT-003 (Final Unit)            |
| Quizzes in UNIT-003       | 2 MCQs                           |
| Correct Answers Submitted | 2                                |
| Score Percentage          | 100% (Passed)                    |

# Preconditions
- Student has already completed and passed UNIT-001 and UNIT-002 within MOD-001.
- Student is currently viewing the quizzes for the final unit, UNIT-003.
- No completion certificate has been issued yet for MOD-001.

# Steps
1. Answer both MCQs in UNIT-003 correctly.
2. Click the global "Submit" button on the page.
3. Observe the system message, curriculum completion status, and certificate generation status.

# Expected Result
- The system confirms UNIT-003 is passed (100% score >= 50%).
- The system marks MOD-001 as fully completed since all learning units inside the module are successfully cleared.
- A digital certificate of completion is automatically generated and issued to the Student's profile for MOD-001.

# Notes

# Attachments
