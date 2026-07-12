---
tc_id: TC-CAT-RND-004
title: Mobile app applies all settings to behavior and visibility
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-042, CAT-REQ-016, CAT-REQ-019, CAT-REQ-020
tags:
  - test-case
  - mobile
  - rendering
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| showTitle | false |
| showCta | false |
| showPrice | false |
| highlight | "none" |
| columns | 3 |

# Preconditions
- A Categories section is configured with specific settings values.

# Steps
1. Configure the section with showTitle=false, showCta=false, showPrice=false, highlight=none, columns=3.
2. Save and load the Home screen.
3. Visually verify each setting's effect.

# Expected Result
- Title is NOT displayed (and no title gap space is reserved).
- CTA is NOT displayed.
- Prices are NOT displayed on category items.
- No highlight badge is displayed on any category item.
- Categories are arranged in 3 columns per row.

# Notes
# Attachments
