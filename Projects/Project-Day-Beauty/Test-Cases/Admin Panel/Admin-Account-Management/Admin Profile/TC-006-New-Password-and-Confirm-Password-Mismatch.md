---
tc_id: TC-Admin-pro-006
title: Verify Mismatched New Password and Confirm Password
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-012-Beauty-Admin-Account-Management
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
-Admin is logged in and on  **Change Password** page.
# Steps
1. Enter a valid current password.  
2. Enter a valid new password.  
3. Enter a different value in the **Confirm Password** field.  
4. Click Save.
# Expected Result
-The system displays a validation message indicating that the **New Password** and **Confirm Password** do not match, and the password is not updated.
# Notes

# Attachments
