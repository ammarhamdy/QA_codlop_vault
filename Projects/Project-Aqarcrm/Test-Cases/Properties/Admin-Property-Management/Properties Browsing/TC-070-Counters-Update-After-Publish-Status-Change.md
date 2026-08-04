---
tc_id: TC-A-Prop-070
title: Verify property counters are updated after changing the publish status
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
-Admin is on the **Properties** page and at least one property exists.
# Steps
1. Note the current **Total**, **Published**, and **Unpublished** counters.  
2. Change a property's publish status using the toggle (Published ↔ Unpublished).
# Expected Result
-The property's publish status is updated successfully, and the **Published** and **Unpublished** counters are updated accordingly while the **Total** counter remains unchanged.
# Notes

# Attachments
