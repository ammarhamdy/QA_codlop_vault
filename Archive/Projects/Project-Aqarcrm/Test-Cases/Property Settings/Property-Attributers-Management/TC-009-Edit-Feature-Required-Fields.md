---
tc_id: TC-PATT-009
title: Verify Required Fields Validation When Editing Property Attribute
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
-An existing property Attribute is available.
# Steps
1. Click **Edit** for an existing property Attribute.  
2. Clear the **Property Type** field.  
3. Clear the **Attribute Name** field.  
4. Click **Save**.
# Expected Result
-The system prevents saving and displays validation messages indicating that both **Property Type** and **Attribute Name** are required.
# Notes

# Attachments
