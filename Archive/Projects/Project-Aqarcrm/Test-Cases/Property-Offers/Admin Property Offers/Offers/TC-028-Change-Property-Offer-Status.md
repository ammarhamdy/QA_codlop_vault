---
tc_id: TC-A-Off-028
title: Verify Changing Property Offer Status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Property-Offers
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
-A property offer exists.
# Steps
1. Change the property offer status from **Active** to **Inactive**.  
2. Verify the status is updated.  
3. Change the status back from **Inactive** to **Active**.
# Expected Result
-The property offer status is updated successfully each time, and the new status is reflected correctly in the property offers list.
# Notes

# Attachments
