---
tc_id: TC-Admin-030
title: Verify Active Supervisor Session After Account Deactivation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Beauty-Dashboard-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Supervisor is logged in.
# Steps
1. As Admin, open the **Supervisors** list & Deactivate the supervisor account.  
2. On the supervisor's active session, try to refresh the page or perform any action (e.g., navigate or save changes).
# Expected Result
-The supervisor account is deactivated successfully. The active session is no longer allowed to access the system, and the supervisor is logged out or denied access with an appropriate message.
# Notes

# Attachments
