---
tc_id: TC-PROD-LAY-002
title: Verify Admin Can Select All Four Supported Layouts
priority: High
status: Ready
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
| Layout 1 | grid_one |
| Layout 2 | grid_two |
| Layout 3 | grid_three |
| Layout 4 | horizontal |

# Preconditions
- Admin is logged into the Admin Panel.

# Steps
1. Create a Product Section and set layout to `grid_one`. Save and verify.
2. Edit the section and change layout to `grid_two`. Save and verify.
3. Edit the section and change layout to `grid_three`. Save and verify.
4. Edit the section and change layout to `horizontal`. Save and verify.

# Expected Result
- Each of the four supported layout values can be selected and saved.
- The generated JSON reflects the selected layout in both `section_key` and `layout` fields.
- No validation errors occur for any supported value.

# Notes

# Attachments
