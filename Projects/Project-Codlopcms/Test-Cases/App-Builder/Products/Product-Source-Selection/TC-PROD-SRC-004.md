---
tc_id: TC-PROD-SRC-004
title: Verify parentCategoryId Accepts Null Value
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-026
tags:
  - test-case
  - source
  - category
  - null
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | null |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.
- `productSource` is set to a category-based value.

# Steps
1. Set `parentCategoryId` to null (clear the selection).
2. Attempt to save.

# Expected Result
- `parentCategoryId` accepts null as a valid value.
- The JSON contains `parentCategoryId: null`.

# Notes
- A null `parentCategoryId` may imply fetching all products or no products, depending on business rules.

# Attachments
