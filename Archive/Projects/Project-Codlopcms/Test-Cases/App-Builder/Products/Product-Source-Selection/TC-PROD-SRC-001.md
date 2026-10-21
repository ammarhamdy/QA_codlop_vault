---
tc_id: TC-PROD-SRC-001
title: Verify Admin Can Select Product Source from Supported Values
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-025
tags:
  - test-case
  - source
  - selection
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Locate the Product Source selector.
2. Select "selected_products" from the available options.
3. Save the section.
4. Generate and inspect the JSON.

# Expected Result
- The selection is saved successfully.
- The JSON contains `productSource: "selected_products"`.
- The UI shows relevant additional fields based on the source selection.

# Notes
- When `productSource` is `selected_products`, the product selection UI (`data-strings`) should be shown.
- When `productSource` is category-based, the `parentCategoryId` field should be shown.

# Attachments
