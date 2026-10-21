---
tc_id: TC-PROD-SRC-011
title: Verify Selected Product Order Is Rendered Correctly on Mobile
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-029, PROD-REQ-037
tags:
  - test-case
  - source
  - product-order
  - rendering
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| data-strings | ["prod-004", "prod-001", "prod-003", "prod-002"] |

# Preconditions
- A Product Section is configured with the above `data-strings` order.
- All four products exist and have resolvable data.
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe the order of products in the section.

# Expected Result
- Products are rendered in the exact order: prod-004, prod-001, prod-003, prod-002.
- The order matches the `data-strings` array order.
- Products are not re-sorted by the mobile app by any other criteria.

# Notes

# Attachments
