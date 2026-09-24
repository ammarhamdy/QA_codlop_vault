---
tc_id: TC-Service-004
title: Verify length validation for service text fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Services
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
-Admin is on Add Service form.
# Steps
1. Enter text within the allowed length.
2. Enter text exceeding the allowed length in each applicable field.
3. Save
# Expected Result
-Values within the allowed length are accepted, while values exceeding the allowed length are rejected and the appropriate validation message is displayed.
# Notes

# Attachments

# Script

---
*Last Updated: {{date}} {{time}}*