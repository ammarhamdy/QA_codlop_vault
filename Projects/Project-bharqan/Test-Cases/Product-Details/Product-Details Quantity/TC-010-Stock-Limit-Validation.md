---
tc_id: TC-PD-010
title: Verify Product Quantity Cannot Exceed Available Stock
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003-Bharqan-Product-Details
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on Product Details page.
# Steps
1. Increase quantity using (+) button until reaching the available stock.  
2. Try to increase quantity beyond available stock
# Expected Result
-The quantity stops at the maximum stock value, and a validation message is displayed (e.g., "You cannot exceed available stock").
# Notes

# Attachments
