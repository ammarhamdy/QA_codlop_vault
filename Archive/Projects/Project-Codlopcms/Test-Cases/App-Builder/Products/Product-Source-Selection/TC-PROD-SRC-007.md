---
tc_id: TC-PROD-SRC-007
title: Verify Admin Can Browse, Search, Add, and Remove Selected Products
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-028
tags:
  - test-case
  - source
  - product-selection
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Products to Select | prod-001, prod-002, prod-003 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is open.
- Multiple products exist in the product catalog.

# Steps
1. Open the product selector/browser.
2. Search for a product by name or ID.
3. Select "prod-001" and add it to the selection list.
4. Browse and add "prod-002" and "prod-003".
5. Remove "prod-002" from the selection list.
6. Save the section.

# Expected Result
- Admin can browse and search products.
- Products can be added to and removed from the selection list.
- After saving, `data-strings` contains `["prod-001", "prod-003"]`.

# Notes

# Attachments
