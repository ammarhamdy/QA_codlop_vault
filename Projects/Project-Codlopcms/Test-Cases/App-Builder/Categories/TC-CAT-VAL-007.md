---
tc_id: TC-CAT-VAL-007
title: Admin Panel validates layout selection is required for save
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-007
tags:
  - test-case
  - admin-panel
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | (not selected) |

# Preconditions
- A new Categories section is in editing mode with no layout selected.

# Steps
1. Fill in all other required fields except layout.
2. Attempt to save.
3. Observe validation behavior.

# Expected Result
- Save is blocked.
- A validation message indicates that layout selection is required.

# Notes
# Attachments
