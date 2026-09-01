---
tc_id: TC-CART-M-007
title: Verify minimum and maximum allowed product quantity
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
-Product exists in the cart.
# Steps
1. Decrease the product quantity until it reaches **1** and tap **Decrease (-)** again.  
2. Increase the product quantity until it reaches the **available stock** and tap **Increase (+)** again
# Expected Result
-The quantity cannot be decreased below **1** or increased beyond the **available stock**.
# Notes

# Attachments
