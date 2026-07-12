---
tc_id: TC-PROD-SRC-013
title: Verify Selected Products Persisted as Array of Strings in data-strings
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-028
tags:
  - test-case
  - source
  - product-selection
  - json
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products | prod-001, prod-002, prod-003 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is open.

# Steps
1. Select three products (prod-001, prod-002, prod-003).
2. Save the section.
3. Generate and inspect the JSON.

# Expected Result
- The JSON contains `data-strings: ["prod-001", "prod-002", "prod-003"]`.
- Each entry is a string type, not a number or object.

# Notes

# Attachments
