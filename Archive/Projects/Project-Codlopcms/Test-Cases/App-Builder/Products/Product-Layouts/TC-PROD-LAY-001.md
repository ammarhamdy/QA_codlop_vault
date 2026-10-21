---
tc_id: TC-PROD-LAY-001
title: Verify Admin Can Select Layout from Supported Values (grid_one, grid_two, grid_three, horizontal)
priority: High
status:
type: Functional
linked_requirement: PROD-REQ-008
tags:
  - test-case
  - layout
  - selection
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | grid_one |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Locate the layout/section_key selector.
2. Select "grid_one" from the available options.
3. Save the section.
4. Generate and inspect the JSON.

# Expected Result
- The layout selection is saved successfully.
- The JSON contains `section_key: "grid_one"` and `layout: "grid-one"` (or equivalent mapped value per consistency rule).

# Notes
- Repeat for all four supported values: grid_one, grid_two, grid_three, horizontal.

# Attachments
