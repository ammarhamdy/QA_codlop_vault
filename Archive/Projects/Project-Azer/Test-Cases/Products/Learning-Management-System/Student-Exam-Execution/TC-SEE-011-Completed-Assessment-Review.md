---
tc_id: TC-SEE-011
title: Review Completed Assessment After Successful Submission
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
| Field     | Value   |
| --------- | ------- |
| User Role | Student |
|           |         |

# Preconditions
User has completed and passed the assessment.
# Steps
1. Complete and submit the assessment with a passing score.  
2. Verify assessment status is marked as Passed.  
3. Navigate away from the assessment.  
4. Return to the completed assessment.  
5. Open the assessment review page
# Expected Result
User can access and review the completed assessment, including submitted answers, score, and feedback.
# Notes

# Attachments
