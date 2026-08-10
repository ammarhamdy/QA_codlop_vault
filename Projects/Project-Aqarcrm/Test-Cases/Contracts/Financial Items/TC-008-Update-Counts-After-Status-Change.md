---
tc_id: TC-FIt-008
title: Verify that counts are updated when changing Financial Item status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-014-Contracts
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
-At least one active and one inactive Financial Item exist.
# Steps
1. Note the active and inactive counts.  
2. Change an active Financial Item to Inactive.
# Expected Result
-The active count should decrease by 1 and the inactive count should increase by 1.
# Notes

# Attachments
