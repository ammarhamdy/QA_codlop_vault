---
tc_id: TC-003
title: Verify User Activation and Deactivation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Users Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Change User status from Active to Inactive.  
2. Verify status is updated
# Expected Result
User status changes successfully according to the selected action and is reflected correctly in the supervisors list.
# Notes

# Attachments
