---
tc_id: TC-Contact-012
title: Verify Email rejects invalid format
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Request Form is displayed.
# Steps
1. Enter an invalid email such as `test@`, `test.com`, or `test@.com`.
2. Fill all Fields with valid data &Click Send.
# Expected Result
-Appropriate email validation message is displayed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*