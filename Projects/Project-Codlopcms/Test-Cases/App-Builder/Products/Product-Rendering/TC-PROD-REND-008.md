---
tc_id: TC-PROD-REND-008
title: Verify Mobile App Renders Products in Exact Order from data-strings
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-037
tags:
  - test-case
  - rendering
  - product-order
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| data-strings | ["prod-003", "prod-001", "prod-002"] |

# Preconditions
- A Product Section is configured with three products in the above order.
- All three products exist and have resolvable data.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe the left-to-right/top-to-bottom order of products.

# Expected Result
- Products are rendered in the order: prod-003, prod-001, prod-002.
- The order matches the `data-strings` array exactly.
- Products are not re-sorted by the mobile app by name, price, or any other criteria.

# Notes

# Attachments
