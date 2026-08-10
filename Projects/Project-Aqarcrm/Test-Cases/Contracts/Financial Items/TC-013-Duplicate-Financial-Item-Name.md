---
tc_id: TC-FIt-013
title: Verify that duplicate Financial Item names are not allowed
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
-A Financial Item with the same name already exists.
# Steps
1. Click **Add Financial Item**.  
2. Enter an existing Financial Item name.  
3. Click Save.
# Expected Result
-The system should prevent adding the duplicate Financial Item and display an appropriate validation message.
# Notes

# Attachments
