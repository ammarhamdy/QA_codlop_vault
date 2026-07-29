---
tc_id: TC-client-004
title: Verify filtering clients by status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-007-Clients-Management
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
-Clients with both **Active** and **Inactive** statuses exist
# Steps
1. Navigate to the **Clients** page.  
2. Click the **Active** filter and verify the displayed Clients.  
3. Click the **Inactive** filter and verify the displayed Clients.
# Expected Result
-Selecting **Active** displays only active clients, and selecting **Inactive** clients only inactive clients.
# Notes

# Attachments
