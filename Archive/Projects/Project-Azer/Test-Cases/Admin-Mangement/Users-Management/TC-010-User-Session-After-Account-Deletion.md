---
tc_id: TC-010
title: Verify User Session Behavior After Account Deletion
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
Admin is logged in and on Admins page & User is logged in to the system and has an active session.
# Steps
1. Log in as a user and keep the session active.  
2. Log in as Admin in another browser/tab.  
3. Navigate to Users Management.  
4. Delete the user's account.  
5. Return to the user's active session and attempt to navigate, refresh, or perform any action.
# Expected Result
The user's active session is terminated after account deletion. The user is prevented from accessing the system or performing any actions and is redirected to the login page or shown an appropriate message indicating that the account no longer exists.
# Notes

# Attachments
