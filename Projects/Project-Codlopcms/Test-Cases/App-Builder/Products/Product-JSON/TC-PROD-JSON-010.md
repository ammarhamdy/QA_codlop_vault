---
tc_id: TC-PROD-JSON-010
title: Verify JSON Excludes parentCategoryId When Source Is selected_products
priority: Medium
status: Ready
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-027
tags:
  - test-case
  - json
  - parentCategoryId
  - consistency
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| Selected Products | prod-001 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with `selected_products` source is saved and published.

# Steps
1. Generate the JSON output.
2. Inspect the JSON for presence of `parentCategoryId`.

# Expected Result
- `parentCategoryId` is absent or explicitly set to null.
- No category identifier is present.

# Notes

# Attachments
