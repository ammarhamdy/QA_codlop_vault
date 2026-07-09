---
tc_id: TC-PROD-LAY-004
title: Verify Layout and section_key Are Consistent on Save
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-009
tags:
  - test-case
  - layout
  - consistency
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected Layout | grid_two |
| Expected section_key | grid_two |
| Expected layout | grid-two |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Select layout "grid_two".
2. Save the section.
3. Generate and inspect the JSON.

# Expected Result
- `section_key` is set to `grid_two`.
- `layout` is set to `grid-two` (kebab-case equivalent).
- Both values are logically consistent (refer to the same rendering template).

# Notes
- The Admin Panel should automatically set both fields based on the single user selection.

# Attachments
