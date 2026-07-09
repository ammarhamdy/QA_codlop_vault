---
tc_id: TC-PROD-SRC-002
title: Verify productSource Selection Determines Visible Configuration Fields
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-025, PROD-REQ-026
tags:
  - test-case
  - source
  - configuration
  - dynamic-fields
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source 1 | selected_products |
| Product Source 2 | category_based |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Select `productSource` as "selected_products".
2. Observe which configuration fields are displayed.
3. Change `productSource` to a category-based value.
4. Observe which configuration fields are displayed.

# Expected Result
- When `productSource` is `selected_products`, the product picker (`data-strings`) is shown and `parentCategoryId` is hidden/disabled.
- When `productSource` is category-based, the `parentCategoryId` selector is shown and the product picker is hidden/disabled.

# Notes

# Attachments
