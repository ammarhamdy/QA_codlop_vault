---
tc_id: TC-PROD-SRC-005
title: Verify Consistency Validation Between productSource and parentCategoryId
priority: Medium
status: Ready
type: Validation
linked_requirement: PROD-REQ-027
tags:
  - test-case
  - source
  - consistency
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | null |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `productSource` to a category-based value.
2. Leave `parentCategoryId` as null.
3. Attempt to save/publish.

# Expected Result
- Save/publish is blocked.
- A validation error is displayed: "Parent category is required when product source is category-based."

# Notes
- Conversely, `parentCategoryId` must be null when `productSource` is `selected_products`.

# Attachments
