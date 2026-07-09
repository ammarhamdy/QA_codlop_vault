---
tc_id: TC-PROD-JSON-005
title: Verify Generated JSON Contains parentCategoryId for Category-Based Source
priority: High
status: Ready
type: API
linked_requirement: PROD-REQ-031, PROD-REQ-026
tags:
  - test-case
  - json
  - category
  - generation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | category_based |
| parentCategoryId | cat-123 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with category-based source is configured.
- The section is saved/published.

# Steps
1. Generate the JSON output.
2. Inspect the `parentCategoryId` field.

# Expected Result
- The JSON contains `parentCategoryId: "cat-123"`.
- `data-strings` is absent or null (not an array).

# Notes

# Attachments
