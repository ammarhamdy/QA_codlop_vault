---
tc_id: TC-PFac-012
title: Verify Property Facade Cannot Be Deleted When Assigned to a Property
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
tags:
  - test-case
run_result: "-"
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-A property facade is assigned to at least one existing property.
# Steps
1. Navigate to **Property Settings & move to Property Facades**.  
2. Locate the assigned facade.  
3. Click **Delete**.  
# Expected Result
-The system prevents deleting the facade because it is assigned to a property and displays an appropriate error/validation message. The facade remains in the list.
# Notes

# Attachments
