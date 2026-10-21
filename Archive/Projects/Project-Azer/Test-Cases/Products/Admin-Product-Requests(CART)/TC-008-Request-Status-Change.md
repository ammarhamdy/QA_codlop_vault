---
tc_id: TC-008
title: Verify admin can change request status between Active and Inactive
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006
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
An administrator is logged into the admin panel and is viewing products
# Steps
1. Select Request.  
2. Change status from Active to Inactive.
# Expected Result
Request status is updated successfully and reflected correctly in the Requests list.
# Notes

# Attachments
