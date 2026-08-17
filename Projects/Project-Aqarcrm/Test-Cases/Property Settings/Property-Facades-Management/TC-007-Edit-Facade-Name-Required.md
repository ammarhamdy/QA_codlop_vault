---
tc_id: TC-PFac-007
title: Verify Required Name Validation on Edit
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-017-Property-Settings1
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-An existing property facade is available.
# Steps
1. Click **Edit** for an existing facade.  
2. Clear the **Facade Name** field.  
3. Click **Save**.
# Expected Result
-The system prevents saving and displays a validation message indicating that the **Facade Name** is required.
# Notes

# Attachments
