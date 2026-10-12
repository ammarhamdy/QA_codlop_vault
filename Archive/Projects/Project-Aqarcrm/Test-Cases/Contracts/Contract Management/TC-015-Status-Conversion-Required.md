---
tc_id: TC-Contract-015
title: Verify that property status conversion is mandatory
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
-A property has been selected.
# Steps
1. Leave both **Rented** and **Reserved** unselected.  
2. Click **Next**.
# Expected Result
-The system should prevent proceeding and display a validation message requiring the selection of a property status.
# Notes

# Attachments
