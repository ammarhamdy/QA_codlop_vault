---
tc_id: TC-client-020
title: Verify client statistics are updated after adding or deleting a client
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
-Admin on the **Clients** page.
# Steps
1. Note the current client statistics.  
2. Add a new client and verify the statistics.  
3. Delete the newly added (or another existing) client and verify the statistics again.
# Expected Result
-The **Total Clients**, **Active Clients, and **Inactive Clients** statistics are updated correctly after adding or deleting a Client, reflecting the current data in the system.
# Notes

# Attachments
