---
tc_id: TC-Admin-Acc-003
title: Verify Login with Empty Required Fields
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
-Admin Login page is displayed.
# Steps
1. Leave email or password empty &fill other field with valid data 
2. Leave Both fields empty
3. Click Login
# Expected Result
-In all cases, the system displays the appropriate validation message(s) for the required field(s), login is not performed, and the admin remains on the **Login** page.
# Notes

# Attachments
