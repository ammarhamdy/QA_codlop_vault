---
tc_id: TC-PROD-CONF-008
title: Verify Admin Can Toggle Price Display (showPrice)
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-023
tags:
  - test-case
  - configuration
  - price
  - visibility
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| showPrice | false |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with products that have price data is open for editing.

# Steps
1. Set `showPrice` to false.
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains `showPrice: false`.
- The mobile app does not render price text on any product card.
- Other card content (name, image) remains visible.

# Notes
- When `showPrice` is true and product data includes a price, the price is displayed.
- If `showPrice` is true but product data lacks a price, no price is shown (no crash).

# Attachments
