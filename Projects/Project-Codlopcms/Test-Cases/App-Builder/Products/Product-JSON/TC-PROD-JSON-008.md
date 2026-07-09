---
tc_id: TC-PROD-JSON-008
title: Verify Generated JSON Has Correct Data Types for All Fields
priority: High
status: Ready
type: API
linked_requirement: PROD-REQ-031
tags:
  - test-case
  - json
  - data-types
---

# Test Data
| Field | Value |
| ----- | ----- |
| id | auto-generated (string) |
| type | product (string) |
| enabled | true (boolean) |
| section_key | grid_one (string) |
| layout | grid-one (string) |
| productCardStyle | type_one (string) |
| title | Test (string) |
| radius | 12 (number) |
| transparentBackground | false (boolean) |

# Preconditions
- Admin is logged into the Admin Panel.
- A fully configured Product Section is saved and published.

# Steps
1. Generate the JSON output.
2. Inspect each field's data type.

# Expected Result
- All field types match the documented contract:
  - `id`: string
  - `type`: string ("product")
  - `enabled`: boolean
  - `section_key`: string
  - `layout`: string
  - `productCardStyle`: string
  - `title`: string
  - `style` properties: strings for colors, numbers for numeric values, booleans for toggles
  - `settings` properties: booleans for toggles, strings for selectable values
  - `data-strings` (if present): array of strings
  - `parentCategoryId` (if present): string or null

# Notes

# Attachments
