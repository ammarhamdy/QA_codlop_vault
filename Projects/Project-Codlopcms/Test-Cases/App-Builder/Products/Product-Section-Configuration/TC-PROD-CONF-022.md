---
tc_id: TC-PROD-CONF-022
title: Verify Price Is Rendered Only When showPrice Is True and Product Has Price Data
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-023
tags:
  - test-case
  - configuration
  - price
  - rendering
---

# Test Data
| Field | Value |
| ----- | ----- |
| showPrice | true |

# Preconditions
- Admin is logged into the Admin Panel.
- Product Section contains at least one product with a price value and one product without a price value.
- Section is published.

# Steps
1. Set `showPrice` to true.
2. Save and publish.
3. View on the mobile app.

# Expected Result
- Products that have a price value display the price.
- Products that do not have a price value do not display a price.
- No crash or error occurs for products without price data.

# Notes

# Attachments
