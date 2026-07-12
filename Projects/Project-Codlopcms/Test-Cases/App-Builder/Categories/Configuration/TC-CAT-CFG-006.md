---
tc_id: TC-CAT-CFG-006
title: Configure section colors (background, titleColor, textColor) via hex
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-010
tags:
  - test-case
  - admin-panel
  - configuration
  - style
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| background | #FF5733 |
| titleColor | #FFFFFF |
| textColor | #000000 |

# Preconditions
- A Categories section exists in editing mode.

# Steps
1. Set background to "#FF5733" using the color picker or hex input.
2. Set titleColor to "#FFFFFF".
3. Set textColor to "#000000".
4. Save the section.
5. Inspect the generated JSON `style` object.

# Expected Result
- Colors are accepted via color picker or direct hex input.
- Generated JSON contains `"style": {"background": "#FF5733", "titleColor": "#FFFFFF", "textColor": "#000000"}`.
- Mobile app renders the section with the configured colors applied.

# Notes
# Attachments
