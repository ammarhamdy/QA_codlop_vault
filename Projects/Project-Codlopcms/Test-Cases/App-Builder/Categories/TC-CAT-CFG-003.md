---
tc_id: TC-CAT-CFG-003
title: Select a layout from the closed list of supported layouts
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-007, CAT-REQ-006
tags:
  - test-case
  - admin-panel
  - configuration
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout options | Closed list (e.g., "type-two", etc.) |

# Preconditions
- A Categories section exists in editing mode.

# Steps
1. Open the layout selector dropdown.
2. Verify the list shows a finite set of options (no free-text input).
3. Select each layout option one by one.
4. For each selection, verify the `layout` and `section_key` field values are updated accordingly.

# Expected Result
- Layout is selected from a dropdown/closed list, not free-text.
- Each layout selection updates both `layout` and `section_key` consistently.
- `layout` and `section_key` never have mismatched values.
- A layout must be selected to enable the Save button.

# Notes
# Attachments
