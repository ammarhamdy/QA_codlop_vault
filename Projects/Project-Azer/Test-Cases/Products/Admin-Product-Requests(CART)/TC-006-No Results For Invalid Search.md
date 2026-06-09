---
tc_id: TC-006
title: Verify search returns no results for invalid keyword
priority:
  - High
status:
  - Ready
type: Negative
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
An administrator is logged into the admin panel 
# Steps
1. Navigate to Product Requests
2. search with invalid data
# Expected Result
No results message is displayed.
# Notes

# Attachments
