---
tc_id: TC-Brokers-022
title: Verify Broker statistics are updated after adding or deleting a Broker
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-008-Brokers-Management
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
-Admin on the **Brokers** page.
# Steps
1. Note the current **Broker statistics.  
2. Add a new Broker and verify the statistics.  
3. Delete the newly added (or another existing) broker and verify the statistics again.
# Expected Result
-The **Total Brokers**, **Active Brokers, and **Inactive Brokers** statistics are updated correctly after adding or deleting a Broker, reflecting the current data in the system.
# Notes

# Attachments
