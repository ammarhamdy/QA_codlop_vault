---
tc_id: TC-A-Off-050
title: Verify that pricing fields are cleared when changing the pricing method
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-010-Property-Offers
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin  is on the Add Property Offer page.
# Steps
1. Select **Fixed Amount** as the pricing method.
2. Enter a value in the **Discount Value** field.
3.  Change the pricing method to **Percentage**.
# Expected Result
-The pricing field related to the previous pricing method should be cleared, and no previous value should remain after switching the pricing method.
# Notes

# Attachments
