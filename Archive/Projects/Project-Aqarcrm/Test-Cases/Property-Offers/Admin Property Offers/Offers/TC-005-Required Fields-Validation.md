---
tc_id: TC-A-Off-005
title: Verify required field validation for all required fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Property-Offers
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
-Add property offer form is open
# Steps
1. Leave one of these fields (property, offer type ,title,....) empty.
2. Fill other fields.
3. Leave all fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the property offer is not added until all mandatory fields are completed.
# Notes

# Attachments
