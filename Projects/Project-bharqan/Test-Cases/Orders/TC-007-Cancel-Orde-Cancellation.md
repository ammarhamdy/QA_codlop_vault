---
tc_id: TC-orders-007
title: Verify Order Cancellation Can Be Aborted
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-008-Bharqan-Orders
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User has at least one **eligible** order that can be canceled, and the order cancellation confirmation dialog is available.
# Steps
1. Navigate to My Orders .
2. Select an **eligible order** from the list & cancel it .
3. Verify that the **order cancellation confirmation dialog** is displayed & tap cancel.

# Expected Result
-The confirmation dialog is closed, the order is not canceled, and the order status remains unchanged
# Notes

# Attachments
