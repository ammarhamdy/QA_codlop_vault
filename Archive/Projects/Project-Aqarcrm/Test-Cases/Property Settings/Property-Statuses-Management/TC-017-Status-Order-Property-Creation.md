---
tc_id: TC-PStat-017
title: Verify Property Status Order During Property Creation
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
-At least two active property statuses exist and their display order has been changed.
# Steps
1. Change the order of the property statuses from **Property Settings**.  
2. Save the changes.  
3. Navigate to properties & click **Add Property**.  
4. Open the **Property Status** dropdown.  
5. Review the status order.
# Expected Result
-The active property statuses are displayed in the **same order configured in Property Settings**.
# Notes

# Attachments
