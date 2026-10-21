---
tc_id: TC-PROD-SRC-010
title: Verify Each Entry in data-strings Is a Non-Empty String
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-030
tags:
  - test-case
  - source
  - product-ids
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products | "" (empty string), prod-001 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is open.

# Steps
1. Attempt to add an empty-string product ID to the selection list.
2. Attempt to save.

# Expected Result
- Save is blocked.
- A validation error is displayed: "Product ID must be a non-empty string."
- Empty strings are not persisted in `data-strings`.

# Notes

# Attachments
