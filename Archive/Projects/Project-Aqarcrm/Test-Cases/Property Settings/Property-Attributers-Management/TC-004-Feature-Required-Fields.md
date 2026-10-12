---
tc_id: TC-PATT-004
title: Verify Required Fields Validation When Adding Property Attribute
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
-Admin is on the **Add Property Attribute** page.
# Steps
1. Leave the **Property Type** field unselected.  
2. Leave the **Attributes Name** field empty.  
3. Click **Save**.
# Expected Result
-The system prevents submission and displays validation messages indicating that both **Property Type** and **Attributes Name** are required.
# Notes

# Attachments
