---
tc_id: TC-CART-M-008
title: Verify cart price calculation after quantity updates
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
-Cart contains one or more products.
# Steps
1. Increase and decrease the quantity of products in the cart.  
2. Verify the **Subtotal** and **Total** amounts after each change
# Expected Result
-The **Subtotal** and **Total** are recalculated correctly after each quantity update, and all displayed prices match the expected calculations.
# Notes

# Attachments
