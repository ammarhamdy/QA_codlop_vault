---
tc_id: TC-Admin-008
title: Verify Mismatched Password and Confirm Password
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-012-Bharqan-Admin-Management
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin opens add admin form.
# Steps
1. Enter a valid password.  
2. Enter a different value in the **Confirm Password** field.  
3. Click **Save**
# Expected Result
-A validation message is displayed indicating that the passwords do not match, and  admin is not created.
# Notes

# Attachments
