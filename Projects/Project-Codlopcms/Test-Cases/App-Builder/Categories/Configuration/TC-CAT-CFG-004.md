---
tc_id: TC-CAT-CFG-004
title: Configure grid columns for a grid-based layout
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-008, CAT-REQ-022
tags:
  - test-case
  - admin-panel
  - configuration
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | type-two (grid-based) |
| Columns | 2, 3, 4 (valid) |

# Preconditions
- A Categories section with a grid-compatible layout is in editing mode.

# Steps
1. Set columns to 2 and save.
2. Edit the section, change columns to 4, and save.
3. Inspect the generated JSON for both saves.
4. Verify the `columns` value in `settings` matches what was configured.

# Expected Result
- Columns accepts positive integer values.
- The columns field is visible and editable for grid-based layouts only.
- The generated JSON settings object contains `"columns": <configured_value>`.
- The mobile app renders the configured number of columns per row.

# Notes
# Attachments
