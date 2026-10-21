---
tc_id: TC-015
title: Verify system prevents adding a duplicate product
priority:
  - High
status:
  - Ready
type: Negative
linked_requirement: US-006
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
An administrator is logged into the admin panel 
# Steps
1. Navigate to product page
2. Click add product
3. Enter details of an existing product.
4. Click save
# Expected Result
System prevents product creation and displays an appropriate validation message indicating that the product already exists.
# Notes

# Attachments
