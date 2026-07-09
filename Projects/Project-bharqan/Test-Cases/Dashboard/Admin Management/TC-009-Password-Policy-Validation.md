---
tc_id: TC-Admin-009
title: Verify Password Policy Validation
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
-Admin opens Add admins form.
# Steps
1. Enter a password that does not comply with the password policy.  
2. Enter the same password in the **Confirm Password** field.  
3. Fill in the remaining required fields with valid data.  
4. Click **Save**.
# Expected Result
-The system prevents saving the supervisor, highlights the **Password** field, and displays the appropriate password policy validation message.
# Notes

# Attachments
