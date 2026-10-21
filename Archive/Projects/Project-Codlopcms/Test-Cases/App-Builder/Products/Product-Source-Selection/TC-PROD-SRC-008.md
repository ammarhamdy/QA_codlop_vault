---
tc_id: TC-PROD-SRC-008
title: Verify Selected Product Order Is Preserved in data-strings
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-029
tags:
  - test-case
  - source
  - product-order
  - reorder
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products (initial) | prod-001, prod-002, prod-003, prod-004 |
| Reordered Products | prod-004, prod-001, prod-003, prod-002 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is open.
- Four products have been added to the selection list.

# Steps
1. Drag-and-drop or use the reorder control to change the product order to: prod-004, prod-001, prod-003, prod-002.
2. Save the section.
3. Generate and inspect the JSON.

# Expected Result
- The JSON contains `data-strings: ["prod-004", "prod-001", "prod-003", "prod-002"]`.
- The order matches the admin-defined order exactly.

# Notes

# Attachments
