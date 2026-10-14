---
tc_id: TC-Contact-006
title: Verify Full Name rejects invalid characters
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value   |
| ----- | ------- |
| Name  | *&^%    |
| Name  | 1214545 |

# Preconditions
-Request Form is displayed.
# Steps
1. Enter invalid characters/numbers in Name Field.
# Expected Result
-The system rejects invalid input or displays an appropriate validation message.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*