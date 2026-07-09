---
tc_id: TC-PROD-REND-005
title: Verify Mobile App Resolves Product Data for Category-Based Source
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-035
tags:
  - test-case
  - rendering
  - product-resolution
  - category
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | cat-123 |
| Category cat-123 | Contains: prod-010, prod-011, prod-012 |

# Preconditions
- A Product Section is configured with category-based source.
- The parent category exists and contains at least 3 products with resolvable data.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendered product cards.

# Expected Result
- The mobile app fetches products belonging to `parentCategoryId`.
- Product cards display the correct data for each product in the category.
- Products are rendered without errors.

# Notes

# Attachments
