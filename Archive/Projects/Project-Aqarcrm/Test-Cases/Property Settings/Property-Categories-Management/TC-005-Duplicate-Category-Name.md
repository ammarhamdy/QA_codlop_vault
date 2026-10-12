---
tc_id: TC-PCat-005
title: Add Property Category with Duplicate Name
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
-A property category with the same name already exists.
# Steps
1. Click **Add Property Category**.  
2. Enter an existing category name.  
3. Click **Save**.
# Expected Result
-The system prevents creating a duplicate category and displays an appropriate error message.
# Notes

# Attachments
