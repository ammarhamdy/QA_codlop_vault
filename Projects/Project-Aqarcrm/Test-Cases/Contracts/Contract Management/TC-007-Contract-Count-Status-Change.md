---
tc_id: TC-Contract-007
title: Verify contract count after changing status
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-014-Contracts
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-At least one active and one inactive contract exist.
# Steps
1. Note the active and inactive counts.  
2. Change an active contract to inactive.
# Expected Result
-The active count should decrease by 1, and the inactive count should increase by 1.
# Notes

# Attachments
