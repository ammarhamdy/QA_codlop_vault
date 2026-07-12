---
tc_id: TC-PROD-JSON-004
title: Verify Generated JSON Contains data-strings for Selected Products Source
priority: High
status:
  - completed
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-028
tags:
  - test-case
  - json
  - data-strings
  - generation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products | prod-001, prod-002, prod-003 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is configured with three products.
- The section is saved/published.

# Steps
1. Generate the JSON output.
2. Inspect the `data-strings` field.

# Expected Result
- The JSON contains `data-strings: ["prod-001", "prod-002", "prod-003"]`.
- The array preserves the order as configured.

# Notes

# Attachments
