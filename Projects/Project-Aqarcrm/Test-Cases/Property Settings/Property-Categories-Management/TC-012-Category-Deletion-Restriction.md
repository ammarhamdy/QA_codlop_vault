---
tc_id: TC-PCat-012
title: Verify Property Category Cannot Be Deleted When Assigned to a Property
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
-A property category is assigned to at least one existing property.
# Steps
1. Navigate to **Property Settings → Property Categories**.  
2. Locate the assigned category.  
3. Click **Delete**.  
# Expected Result
-The system prevents deleting the category because it is assigned to a property and displays an appropriate error/validation message.
# Notes

# Attachments
