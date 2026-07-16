---
tc_id: TC-CART-M-009
title: Verify applying valid and invalid coupon codes
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-007-Beauty-CART
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
-Cart contains  products
# Steps
1. Enter a valid coupon and tap Apply.
2. Verify the discount is applied.
3. Enter an invalid or expired coupon and tap Apply.
# Expected Result
-The valid coupon is applied successfully, while the invalid or expired coupon is rejected with an appropriate validation message.
# Notes

# Attachments
