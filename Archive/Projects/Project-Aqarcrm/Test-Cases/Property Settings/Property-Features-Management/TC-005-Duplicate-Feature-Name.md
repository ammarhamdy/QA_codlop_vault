---
tc_id: TC-PFeat-005
title: Add Property Feature with Duplicate Name
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
-A property feature with the same name already exists.
# Steps
1. Click **Add Property Feature**.  
2. Enter an existing feature name.  
3. Click **Save**.
# Expected Result
-The system prevents creating a duplicate feature and displays an appropriate error message.
# Notes

# Attachments
