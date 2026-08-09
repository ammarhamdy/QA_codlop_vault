---
tc_id: TC-Sup-003
title: Verify required field validation for all fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-013-Admins-Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on Add Supervisor page.
# Steps
1. Leave Name or Email or Pass empty.
2. Fill other fields.
3. Leave all Fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the supervisor is not added until all mandatory fields are completed.
# Notes

# Attachments
