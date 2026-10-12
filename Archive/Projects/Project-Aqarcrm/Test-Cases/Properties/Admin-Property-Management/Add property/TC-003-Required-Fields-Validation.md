---
tc_id: TC-A-Prop-003
title: Verify required field validation for all required fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
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
-Add property form is open
# Steps
1. Leave one of these fields (Advertisement type,Title ,Broker,Category,....) empty.
2. Fill other fields.
3. Leave all fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the property is not added until all mandatory fields are completed.
# Notes

# Attachments
