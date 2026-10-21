---
tc_id: TC-PAC-06
title: Verify User Cannot Submit Duplicate Requests for the Same Program
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
Student is logged in.

# Steps
1. Navigate to Program A.
2. Submit a request for the program.
3. Return to Program A page.
4. Click the request/enroll button again.
5. Complete and submit the request.
# Expected Result
The system should prevent the user from submitting another request for the same program if a request has already been submitted.
# Notes

# Attachments
