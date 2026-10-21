---
tc_id: TC-CAT-CFG-005
title: Dynamic UI adaptation based on selected layout
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-009
tags:
  - test-case
  - admin-panel
  - configuration
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout A | type-two (grid, shows columns) |
| Layout B | a non-grid layout |

# Preconditions
- A Categories section exists in editing mode.

# Steps
1. Select a grid-based layout.
2. Observe visible configuration fields (columns field should appear).
3. Switch to a non-grid layout.
4. Observe that grid-specific fields (columns) are hidden or disabled.
5. Save with the non-grid layout.
6. Inspect generated JSON for both layout selections.

# Expected Result
- UI dynamically shows/hides fields based on the selected layout.
- Fields irrelevant to the current layout are hidden or set to null in the generated JSON.
- No irrelevant fields are persisted in the JSON.

# Notes
# Attachments
