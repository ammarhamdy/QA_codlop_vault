---
tc_id: TC-Admin-012
title: Verify Changing Supervisor Status (Activate/Deactivate)
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
-Admin is logged in and at least one admin exists.
# Steps
1. Select an inactive supervisor and click **Activate**.  
2. Verify the supervisor status changes to **Active**.  
3. Select an active supervisor and click **Deactivate**.  
4. Verify the supervisor status changes to **Inactive**.
# Expected Result
-Admin  status is updated successfully based on the selected action, and the updated status is reflected immediately in admins list.
# Notes

# Attachments
