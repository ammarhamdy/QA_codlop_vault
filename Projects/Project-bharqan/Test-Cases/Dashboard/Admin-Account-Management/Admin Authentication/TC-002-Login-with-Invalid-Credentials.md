---
tc_id: TC-Admin-Acc-002
title: Verify Login with Invalid Credentials
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-013-Bharqan-Admin-Account-Management
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
-Admin Login page is displayed.
# Steps
1. Enter an invalid email and a valid password.  
2. Enter a valid email and an invalid password.
3. Enter an invalid email and an invalid password.
4. Click Login.
# Expected Result
-For all cases, login is denied, the admin remains on the **Login** page, and an appropriate error message is displayed.
# Notes

# Attachments
