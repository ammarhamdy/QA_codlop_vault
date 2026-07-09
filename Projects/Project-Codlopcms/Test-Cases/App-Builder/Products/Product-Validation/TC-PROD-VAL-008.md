---
tc_id: TC-PROD-VAL-008
title: Verify Validation Prevents Publishing with Mismatched productSource and parentCategoryId
priority: Medium
status: Ready
type: Validation
linked_requirement: PROD-REQ-027, PROD-REQ-032
tags:
  - test-case
  - validation
  - consistency
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| parentCategoryId | cat-789 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `productSource` to "selected_products".
2. Set `parentCategoryId` to "cat-789".
3. Attempt to publish.

# Expected Result
- Publishing is blocked.
- A validation error is displayed: "Parent category must be empty when product source is selected_products."

# Notes

# Attachments
