---
tc_id: TC-Contract-024
title: Verify Rental End Date validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-014-Contracts
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
-Admin is on the **Contract Details** step.
# Steps
1. Select a Rental Start Date.  
2. Select a Rental End Date earlier than or equal to the Rental Start Date.
# Expected Result
-The system should validate the Rental End Date according to the defined date rules and prevent an invalid rental period.
# Notes

# Attachments
