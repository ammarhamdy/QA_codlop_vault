---
tc_id: TC-CAT-CFG-013
title: Configure price and highlight badge colors
priority: Medium
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-015
tags:
  - test-case
  - admin-panel
  - configuration
  - style
---

# Test Data
| Field | Value |
| ----- | ----- |
| showPrice | true |
| priceColor | #FF0000 |
| highlight | "discount" (non-none) |
| highlightBadgeTextColor | #FFFFFF |
| highlightBadgeBackgroundColor | #FF5733 |

# Preconditions
- A Categories section is in editing mode.
- Category source data includes price information.

# Steps
1. Set showPrice to true and priceColor to "#FF0000".
2. Set highlight to a non-none value.
3. Set highlightBadgeTextColor to "#FFFFFF" and highlightBadgeBackgroundColor to "#FF5733".
4. Save the section.
5. Inspect the generated JSON `style` object.

# Expected Result
- Price and highlight badge color fields accept valid hex values.
- Generated JSON contains all configured color values in `style`.
- Mobile app renders prices in the configured priceColor.
- Mobile app renders highlight badges with configured colors.

# Notes
# Attachments
