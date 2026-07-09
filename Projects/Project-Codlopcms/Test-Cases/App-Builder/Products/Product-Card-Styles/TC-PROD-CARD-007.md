---
tc_id: TC-PROD-CARD-007
title: Verify Each Product Card Style Renders Correctly on Mobile
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-010, PROD-REQ-036
tags:
  - test-case
  - card-style
  - rendering
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 Card Style | type_one |
| Section 2 Card Style | type_two |
| Section 3 Card Style | type_three |
| Section 4 Card Style | type_four |
| Section 5 Card Style | type_five |

# Preconditions
- Five Product Sections are created, each with a different card style.
- All sections have the same layout for consistency.
- All sections are enabled, published, and have valid product data.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendering of product cards in each section.

# Expected Result
- Each card style renders a visually distinct card design (different image placement, text layout, badge position, etc.) as defined by its type.
- No rendering errors occur for any card style.
- Style and settings are applied correctly to each card type.

# Notes

# Attachments
