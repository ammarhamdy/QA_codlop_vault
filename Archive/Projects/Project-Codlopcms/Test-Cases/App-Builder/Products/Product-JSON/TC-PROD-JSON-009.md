---
tc_id: TC-PROD-JSON-009
title: Verify JSON Excludes data-strings When Source Is Category-Based
priority: Medium
status:
  - completed
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-027
tags:
  - test-case
  - json
  - data-strings
  - consistency
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | cat-456 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with category-based source is saved and published.

# Steps
1. Generate the JSON output.
2. Inspect the JSON for presence of `data-strings`.

# Expected Result
- `data-strings` is absent or explicitly set to null.
- No product IDs are present in `data-strings`.

# Notes

# Attachments
