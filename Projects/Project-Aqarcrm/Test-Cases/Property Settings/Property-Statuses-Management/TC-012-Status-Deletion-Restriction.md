---
tc_id: TC-PStat-012
title: Verify Property Status Cannot Be Deleted When Assigned to a Property
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
-A property status is assigned to at least one existing property.
# Steps
1. Navigate to **Property Settings & move to Property Statuses**.  
2. Locate the assigned status.  
3. Click **Delete**.  
# Expected Result
-The system prevents deleting the status because it is assigned to a property and displays an appropriate error/validation message. The status remains in the list.
# Notes

# Attachments
