---
tc_id: TC-CAT-CFG-023
title: Reorder selected categories via drag-and-drop
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-031
tags:
  - test-case
  - admin-panel
  - configuration
  - ordering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Categories selected | Cat_A, Cat_B, Cat_C |
| Reordered to | Cat_C, Cat_A, Cat_B |

# Preconditions
- A Categories section has 3 categories selected (Cat_A, Cat_B, Cat_C in that order).

# Steps
1. Drag Cat_C to the top position in the selection list.
2. Save the section.
3. Inspect the generated JSON array.
4. On the mobile app, verify the render order.

# Expected Result
- Admin can drag-and-drop to reorder selected categories.
- The order in `data-strings`/`data-object` matches the admin-defined order (Cat_C, Cat_A, Cat_B).
- The mobile app renders categories in the exact array order.

# Notes
# Attachments
