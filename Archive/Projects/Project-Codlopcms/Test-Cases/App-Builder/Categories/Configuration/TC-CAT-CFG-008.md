---
tc_id: TC-CAT-CFG-008
title: Toggle transparentBackground and hideBorder
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-011
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
| transparentBackground | true / false |
| hideBorder | true / false |
| background | #FF5733 |

# Preconditions
- A Categories section is in editing mode with background set to a non-default color.

# Steps
1. Set transparentBackground to true and hideBorder to false. Save.
2. Inspect the generated JSON.
3. On the mobile app, verify the section background is transparent (background color ignored) and border is visible.
4. Edit and set transparentBackground to false, hideBorder to true. Save.
5. Inspect JSON and verify the mobile app renders the background color with no border.

# Expected Result
- Both fields accept boolean true/false.
- When transparentBackground is true, the mobile app ignores the `background` color.
- When hideBorder is true, no border is drawn.
- Generated JSON reflects the boolean values.

# Notes
# Attachments
