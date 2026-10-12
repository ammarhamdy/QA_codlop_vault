---
tc_id: TC-Purp-019
title: Verify Filtering Property Purposes by Status
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
-Multiple property purposes exist with both active and inactive statuses.
# Steps
1. Navigate to **Property Settings → Property Purposes**.  
2. Select the **Inactive** filter.  
3. Review the displayed purposes.  
4. Select the **Active** filter.  
5. Review the displayed purposes.
# Expected Result
-When **Inactive** is selected, only inactive property purposes are displayed. When **Active** is selected, only active property purposes are displayed.
# Notes

# Attachments
