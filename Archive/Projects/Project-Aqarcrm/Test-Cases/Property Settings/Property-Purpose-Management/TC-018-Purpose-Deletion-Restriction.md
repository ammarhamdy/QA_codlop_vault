---
tc_id: TC-Purp-018
title: Verify Property Purpose Cannot Be Deleted When Assigned to a Property
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
-A property purpose is assigned to at least one existing property.
# Steps
1. Navigate to **Property Settings → Property Purposes**.  
2. Locate a property purpose that is assigned to a property.  
3. Click **Delete**.  
# Expected Result
-The system prevents deleting the property purpose because it is currently assigned to a property and displays an appropriate validation/error message. The property purpose remains in the list.
# Notes

# Attachments
