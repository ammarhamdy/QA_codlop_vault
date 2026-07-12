---
tc_id: TC-PROD-CRE-001
title: Verify Admin Can Create a New Product Section on Home Screen
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-001
tags:
  - test-case
  - creation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Type | product |
| Section Title | Featured Products |
| Layout | grid_one |
| Product Card Style | type_one |
| Product Source | selected_products |
| Selected Products | ["prod-001", "prod-002"] |
| Enabled | true |

# Preconditions
- Admin is logged into the Admin Panel with appropriate permissions.
- Home screen configuration exists and is accessible.

# Steps
1. Navigate to the Home screen configuration editor.
2. Click "Add Section" or equivalent control.
3. Select section type "product" from the available types.
4. Fill in the required fields (title, layout, productCardStyle, productSource, selected products).
5. Click "Save" to persist the section.

# Expected Result
- A new Product Section is created successfully.
- The section appears in the Home screen section list with type "product".
- A unique `id` is automatically assigned to the section.
- The newly created section is saved but not yet published.
- No validation errors are shown.

# Notes
- The section is not visible to the mobile app until it is enabled and published.

# Attachments
