---
tc_id: TC-PROD-LAY-007
title: Verify Each Layout Renders Correctly on Mobile
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-008, PROD-REQ-036
tags:
  - test-case
  - layout
  - rendering
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 Layout | grid_one |
| Section 2 Layout | grid_two |
| Section 3 Layout | grid_three |
| Section 4 Layout | horizontal |

# Preconditions
- Four Product Sections are created, each with a different layout.
- All sections are enabled and published.
- Each section has valid product data.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendering of each Product Section.
3. Verify the visual structure matches the expected layout.

# Expected Result
- Section with `grid_one` renders as a single-column grid.
- Section with `grid_two` renders as a two-column grid.
- Section with `grid_three` renders as a three-column grid.
- Section with `horizontal` renders as a horizontally scrollable row.
- Each layout correctly applies the relevant `style` and `settings` to its cards.

# Notes

# Attachments
