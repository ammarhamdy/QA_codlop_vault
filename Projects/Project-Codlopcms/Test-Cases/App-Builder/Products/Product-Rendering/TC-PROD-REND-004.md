---
tc_id: TC-PROD-REND-004
title: Verify Mobile App Resolves Product Data for selected_products Source
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-035
tags:
  - test-case
  - rendering
  - product-resolution
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| data-strings | ["prod-001", "prod-002"] |
| Product prod-001 | name: "Widget A", image: "widget-a.jpg", price: 19.99 |
| Product prod-002 | name: "Widget B", image: "widget-b.jpg", price: 29.99 |

# Preconditions
- A Product Section is configured with two manually selected products.
- Both products exist in the product catalog with resolvable data.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendered product cards.

# Expected Result
- The mobile app resolves each product ID in `data-strings`.
- Product cards display the correct name, image, and price for each product.
- Both products are rendered without errors.

# Notes

# Attachments
