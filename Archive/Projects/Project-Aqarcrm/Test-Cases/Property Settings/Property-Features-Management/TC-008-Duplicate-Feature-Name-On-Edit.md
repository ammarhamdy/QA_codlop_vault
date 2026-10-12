---
tc_id: TC-PFeat-008
title: Edit Property Feature with Duplicate Name
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
-At least two property features exist.
# Steps
1. Click **Edit** for a feature.  
2. Change its name to the name of another existing feature.  
3. Click **Save**.
# Expected Result
-The system prevents saving and displays an appropriate duplicate-name validation message.
# Notes

# Attachments
