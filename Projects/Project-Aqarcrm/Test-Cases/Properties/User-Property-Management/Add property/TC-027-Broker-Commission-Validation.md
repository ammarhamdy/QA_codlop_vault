---
tc_id: TC-U-Prop-027
title: Verify Broker Commission field validation
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
-User is logged in as a Broker  on add property form on Brokerage & Signboard step.
# Steps
1. Enter a valid commission percentage.  
2. Verify it is accepted.  
3. Enter invalid values (negative number, percentage greater than 100, or text).
# Expected Result
-System should accept valid commission percentages and reject invalid values with an appropriate validation message.
# Notes

# Attachments
