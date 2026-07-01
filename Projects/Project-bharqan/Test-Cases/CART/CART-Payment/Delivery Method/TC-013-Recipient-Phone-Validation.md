---
tc_id: TC-CART-PayD-013
title: Verify that the recipient's phone number cannot be the same as the account owner's phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-007-Bharqan-CART-Payment
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in and **Pickup by Another Person** is enabled.
# Steps
1. Enter recipient name.  
2. Enter the logged-in user's phone number as the recipient's phone number.
3. Tap save.
# Expected Result
-The system prevents saving the recipient information and displays a validation message indicating that the recipient's phone number must be different from the account owner's phone number.
# Notes

# Attachments
