---
tc_id: TC-PCat-007
title: Verify Required Name Validation on Edit
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
-An existing property category is available.
# Steps
1. Click **Edit** for an existing category.  
2. Clear the **Category Name** field.  
3. Click **Save**.
# Expected Result
-The system prevents saving and displays a validation message indicating that the **Category Name** is required.
# Notes

# Attachments
