---
tc_id: TC-004
title: Verify User Login Based on Account Status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Users Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Navigate to the Login page.  
2. Enter the credentials of the active/ inactive User.  
3. Click Login.
# Expected Result
For active user user login successfully , inactive user login is denied, the user is not authenticated, and an appropriate message is displayed indicating that the account is inactive or disabled.
# Notes

# Attachments
