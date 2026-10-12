---
tc_id: TC-PStat-005
title: Add Property Status with Duplicate Name
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-017-Property-Settings1
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
-A property status with the same name already exists.
# Steps
1. Click **Add Property Status**.  
2. Enter an existing status name.  
3. Click **Save**.
# Expected Result
-The system prevents creating a duplicate status and displays an appropriate error message.
# Notes

# Attachments
