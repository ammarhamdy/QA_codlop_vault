---
tc_id: TC-PROD-REND-014
title: Verify Mobile App Skips Rendering Section When No Products Found for Category
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-043
tags:
  - test-case
  - rendering
  - empty-category
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | cat-empty |
| Category cat-empty | Contains: 0 products |

# Preconditions
- A Product Section is configured with a category that has no products.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe whether the section renders.

# Expected Result
- The section is not rendered on the Home screen.
- No empty/blank placeholder is shown.
- No crash occurs.

# Notes

# Attachments
