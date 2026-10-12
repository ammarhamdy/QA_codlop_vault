---
tc_id: TC-Brokers-003
title: Verify filtering brokers by status
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
-Brokers with both **Active** and **Inactive** statuses exist
# Steps
1. Navigate to the Brokers page.  
2. Click the **Active** filter and verify the displayed Brokers.  
3. Click the **Inactive** filter and verify the displayed Brokers.
# Expected Result
-Selecting **Active** displays only active brokers, and selecting **Inactive** brokers only inactive brokers.
# Notes

# Attachments
