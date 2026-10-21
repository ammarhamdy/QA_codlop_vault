---
tc_id: TC-CAT-CFG-015
title: Toggle showTitle hides title and spacing
priority: High
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-016
tags:
  - test-case
  - admin-panel
  - configuration
  - settings
run_result:
---

# Test Data
| Field | Value |
| ----- | ----- |
| showTitle | true / false |
| title | "Featured Categories" |
| titleGap | 16 |

# Preconditions
- A Categories section is in editing mode with a title set and titleGap configured.

# Steps
1. Set showTitle to true. Save.
2. On the mobile app, verify the title and its spacing (titleGap) are visible.
3. Edit and set showTitle to false. Save.
4. On the mobile app, verify the title text and titleGap spacing are not rendered.

# Expected Result
- showTitle accepts boolean true/false.
- When showTitle is false, the mobile app does not render the title text or its allocated spacing.
- Generated JSON reflects showTitle setting.

# Notes
# Attachments
