---
tc_id: TC-CAT-CFG-009
title: Configure corner radius and spacing values
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-012
tags:
  - test-case
  - admin-panel
  - configuration
  - style
run_result: pass
---

# Test Data
| Field       | Value |
| ----------- | ----- |
| `radius`    | 12    |
| `padding`   | 16    |
| itemRadius  | 8     |
| `titleGap`  | 10    |
| `gapTop`    | 20    |
| `gapBottom` | 20    |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set each spacing/geometry field to positive integer values.
2. Save the section.
3. Inspect the generated JSON `style` object.
4. On the mobile app, verify the spacing values are correctly applied.

# Expected Result
- All six fields accept non-negative numeric values.
- Generated JSON contains all configured values in the `style` object.
- Mobile app renders with the configured radius, padding, gaps, and spacing.

# Notes
# Attachments
