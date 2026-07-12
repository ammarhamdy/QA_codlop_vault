---
tc_id: TC-PROD-SRC-003
title: Verify Admin Can Select Parent Category for Category-Based Source
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-026
tags:
  - test-case
  - source
  - category
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | cat-123 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.
- At least one valid product category exists.

# Steps
1. Set `productSource` to a category-based value.
2. Select a valid `parentCategoryId` from the category selector (e.g., "cat-123").
3. Save the section.
4. Generate and inspect the JSON.

# Expected Result
- The JSON contains `productSource: "category_based"` and `parentCategoryId: "cat-123"`.
- `data-strings` is absent or null since the source is not `selected_products`.

# Notes

# Attachments
