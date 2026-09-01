---
tc_id: TC-Contact-008
title: Verify required field validation for all fields
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
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on contact form.

# Steps
1. Leave Name or Email or Phone empty.
2. Fill other fields.
3. Leave all Fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the request is not sent until all mandatory fields are completed.
# Notes

# Attachments/Script

---
*Last Updated: {{date}} {{time}}*