---
tc_id: TC-PROD-ERR-006
title: Verify Products That Fail to Resolve Are Handled Gracefully
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-035
tags:
  - test-case
  - error-handling
  - product-resolution
  - invalid-ids
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| data-strings | ["prod-valid-1", "prod-nonexistent", "prod-valid-2"] |

# Preconditions
- A Product Section is configured with three product IDs, one of which does not exist.
- Valid products have resolvable data.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendered product cards.

# Expected Result
- Valid products (prod-valid-1, prod-valid-2) are rendered.
- The invalid/missing product (prod-nonexistent) is skipped.
- No error is displayed to the end user for the missing product.
- The order of valid products is preserved.
- The section renders without crashing.

# Notes

# Attachments
