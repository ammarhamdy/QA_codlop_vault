---
tc_id: TC-007
title: Verify admin can cancel product deletion
priority:
  - Medium
status:
  - Ready
type:
  - Positive
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
1. Navigate to Products 
2. click on edit icon for specific product
3. Click Cancel.
# Expected Result
Product remains available.
# Notes

# Attachments
