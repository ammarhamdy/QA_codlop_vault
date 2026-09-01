---
tc_id: TC-RP-006
title: Verify updating the cart badge after adding a recommended product
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004-Beauty-Product-Details
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
-User is on the Product Details page.
# Steps
1. Tap **Add to Cart** on a recommended product.  
2. Observe the cart badge.
# Expected Result
-The cart badge count increases only for unique products; if the product already exists in the cart, only its quantity is updated.
# Notes

# Attachments
