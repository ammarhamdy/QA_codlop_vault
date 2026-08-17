---
tc_id: TC-Purp-010
title: Verify Purpose Name Required Validation on Edit
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
-An existing property purpose is available.
# Steps
1. Click **Edit** for an existing property purpose.  
2. Clear the **Purpose Name** field.  
3. Click **Save**.
# Expected Result
-The system prevents saving and displays a validation message indicating that the **Purpose Name** field is required.
# Notes

# Attachments
