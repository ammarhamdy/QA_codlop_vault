---
tc_id: TC-A-Prop-016
title: Verify duplicate Property Code validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
-Admin is on Add Property form & there is an existing property with a specific code.
# Steps
1. Open Add Property form.
2. Enter an already existing property code.  
3. Fill the required fields.
4. Click Save.
# Expected Result
-System should prevent saving the property and display a validation message indicating that the property code already exists
# Notes

# Attachments
