---
tc_id: TC-CART-M-010
title: Verify coupon field with empty value
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006-Bahrqan-CART
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
-Cart contains products
# Steps
1. Tap Apply without entering a coupon.
# Expected Result
-Validation message is displayed "Please enter coupon".
# Notes

# Attachments
