---
tc_id: TC-CAT-CFG-029
title: Required layout selection prevents saving without it
priority: High
status: Draft
type: Functional
linked_requirement: CAT-REQ-007
tags:
  - test-case
  - admin-panel
  - configuration
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | (not selected) |

# Preconditions
- A Categories section is newly created with no layout selected.

# Steps
1. Attempt to save the section without selecting a layout.
2. Observe the behavior.
3. Select a layout and save.

# Expected Result
- Save is blocked when no layout is selected.
- A validation message indicates that layout selection is required.
- After selecting a layout, saving succeeds.

# Notes
# Attachments
