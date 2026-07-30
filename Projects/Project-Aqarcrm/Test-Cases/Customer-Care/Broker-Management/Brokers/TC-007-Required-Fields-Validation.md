---
tc_id: TC-Brokers-008
title: Verify required field validation for Broker name, phone number, ID Type ,and ID Number
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-008-Brokers-Management
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
-Add Broker form is open
# Steps
1. Leave one of these fields (Broker name, phone number, ID Type ,and ID Number) empty.
2. Fill other fields.
3. Leave all fields empty.
# Expected Result
-Validation messages are displayed for the required fields, and the broker is not added until all mandatory fields are completed.

# Notes

# Attachments
