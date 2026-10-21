---
tc_id: TC-001
title: Verify admin can add a new product with valid data
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
1. Click Add Product.  
2. Enter valid product details.  
3. Click Save.
# Expected Result
Product is created successfully and appears in the products list.
# Notes

# Attachments
