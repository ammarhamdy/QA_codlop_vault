---
tc_id: TC-A-Prop-025
title: Verify Property Area field validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
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
-Admin is on add Property form on Details &Price step.
# Steps
1. Enter an invalid value in the **Property Area** field -120 or avc.
2.  Click **Save**.
3.  Enter a valid numeric value (e.g., `150`) in the **Property Area** field.
4.  Click **Save** again
# Expected Result
-A validation message is displayed for invalid input. After entering a valid numeric value, the property is saved successfully.
# Notes

# Attachments
