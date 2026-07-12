---
tc_id: TC-PROD-VAL-009
title: Verify Validation Prevents Publishing with Missing Category for Category-Based Source
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-027, PROD-REQ-032
tags:
  - test-case
  - validation
  - consistency
  - negative
run_result: pass
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
2. Set `parentCategoryId` to null.
3. Attempt to publish.

# Expected Result
- Publishing is blocked.
- A validation error is displayed: "Parent category is required when product source is category-based."

# Notes

# Attachments
