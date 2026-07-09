---
tc_id: TC-PROD-SRC-006
title: Verify parentCategoryId Must Be Null When productSource Is selected_products
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
| Product Source | selected_products |
| parentCategoryId | cat-123 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `productSource` to "selected_products".
2. Set `parentCategoryId` to "cat-123" (a non-null value).
3. Attempt to save/publish.

# Expected Result
- Save/publish is blocked.
- A validation error is displayed: "Parent category must be empty when product source is selected_products."

# Notes

# Attachments
