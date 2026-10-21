---
tc_id: TC-014
title: Verify adding same product multiple times
priority:
  - Medium
status:
  - Ready
type: Functional
linked_requirement: US-006
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
User on product details page
# Steps
1. Navigate Product Details page.
2. Add product to cart multiple times.
# Expected Result
If the product has available quantity, the system increases the quantity in the cart. If no quantity is available, the system prevents adding the product and displays an out-of-stock or unavailable quantity message.
# Notes

# Attachments
