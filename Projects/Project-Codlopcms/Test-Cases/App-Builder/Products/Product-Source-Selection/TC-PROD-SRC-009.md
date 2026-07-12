---
tc_id: TC-PROD-SRC-009
title: Verify Duplicate Product IDs in data-strings Are Prevented at Save Time
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-030
tags:
  - test-case
  - source
  - product-ids
  - duplicates
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products | prod-001, prod-001 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `productSource: selected_products` is open.

# Steps
1. Add the same product "prod-001" twice to the selection list.
2. Attempt to save.

# Expected Result
- Save is blocked.
- A validation error is displayed: "Duplicate product IDs are not allowed."
- `data-strings` does not contain duplicate entries.

# Notes
- The UI should prevent adding duplicates at selection time, or at least at save time.

# Attachments
