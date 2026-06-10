---
tc_id: TC-009
title: Verify Behavior When Deactivating a User Account with an Active Session
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Users Management
tags:
  - test-case
run_result: Fail
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
4. Deactivate the user's account.  
5. Return to the user's active session and attempt to navigate, refresh, or perform any action.
# Expected Result
**The user is automatically logged out, the active session is terminated, and any subsequent action redirects the user to the login page with an appropriate message.**
# Notes

# Attachments
