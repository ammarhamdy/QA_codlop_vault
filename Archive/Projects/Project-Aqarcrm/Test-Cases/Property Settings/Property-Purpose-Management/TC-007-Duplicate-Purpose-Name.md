---
tc_id: TC-Purp-007
title: Add Property Purpose with Duplicate Name
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-017-Property-Settings1
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
-A property purpose with the same name already exists.
# Steps
1. Click **Add Property Purpose**.  
2. Enter an existing purpose name.  
3. Select a valid color and status configuration.  
4. Click **Save**.
# Expected Result
-The system prevents creating a duplicate purpose and displays an appropriate error message.
# Notes

# Attachments
