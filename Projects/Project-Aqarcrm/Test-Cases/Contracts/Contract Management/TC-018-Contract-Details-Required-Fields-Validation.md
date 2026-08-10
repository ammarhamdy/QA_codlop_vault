---
tc_id: TC-Contract-018
title: Verify validation of required Contract Details fields
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-014-Contracts
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the **Contract Details** step.
# Steps
1. Leave one or /all mandatory fields empty.  
2. Click **Next**.
# Expected Result
-The system should prevent proceeding to the next step and display required field validation messages for **Contract Date, Contract Location, Rental Start Date, Rental End Date, Payment Cycle, and Payment Start Date**.
# Notes

# Attachments
