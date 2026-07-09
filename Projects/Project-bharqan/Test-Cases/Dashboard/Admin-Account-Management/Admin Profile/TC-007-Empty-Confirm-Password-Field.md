---
tc_id: TC-Admin-pro-007
title: Verify Empty Confirm Password Field
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Bharqan-Admin-Account-Management
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is logged in and on the **Change Password** page.
# Steps
1. Enter the current password.  
2. Enter a valid new password.  
3. Leave the **Confirm Password** field empty.  
4. Click **Save**.
# Expected Result
-The system displays a validation message indicating that the **Confirm Password** field is required, and the password is not updated.
# Notes

# Attachments
