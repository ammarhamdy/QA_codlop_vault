---
tc_id: TC-LM-003
title: Create Lesson with Minimum Title Length
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - lesson-validation
  - boundary
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | "A" (1 character) |
| Lesson Content | Valid Text description |
| Question Title | Valid Title |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Enter a single character 'A' in the 'Lesson Title' field.
2. Complete all other required fields with valid details.
3. Click 'Save' or 'Submit'.

# Expected Result
- The lesson is created successfully, as 1 character meets the minimum length requirement for a title.

# Notes

# Attachments
