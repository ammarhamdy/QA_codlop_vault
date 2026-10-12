---
tc_id: TC-FIt-005
title: Verify that the Financial Item name is required
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-014-Contracts
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
-Admin is on the Add Financial Item page.
# Steps
1. Click **Add Financial Item**.  
2. Leave the name field empty.  
3. Click Save.
# Expected Result
-The system should prevent adding the Financial Item and display a required field validation message.
# Notes

# Attachments
