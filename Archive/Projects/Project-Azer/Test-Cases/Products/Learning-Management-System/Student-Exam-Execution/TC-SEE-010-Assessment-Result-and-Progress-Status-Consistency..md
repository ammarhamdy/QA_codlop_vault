---
tc_id: TC-SEE-010
title: Assessment Result Consistency Between Quiz Summary and Progress Status
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
| Field     | Value   |
| --------- | ------- |
| User Role | Student |
|           |         |

# Preconditions
User is enrolled in a program and has access to an assessment.
# Steps
1. Complete the quiz with a passing score.  
2. Submit the assessment.  
3. Verify the result displayed in the quiz summary.  
4. Navigate to the program progress section.  
5. Verify unit status and progression status.
# Expected Result
Quiz summary displays "Passed". The related unit status is updated to "Completed". Program progress is updated correctly and the next unit becomes accessible.
# Notes

# Attachments
