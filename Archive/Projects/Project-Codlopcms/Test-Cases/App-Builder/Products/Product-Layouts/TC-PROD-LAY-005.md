---
tc_id: TC-PROD-LAY-005
title: Verify Admin Panel Prevents Saving Mismatched layout and section_key Values
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-009
tags:
  - test-case
  - layout
  - consistency
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | grid_one |
| layout | horizontal |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing with direct API/advanced access.

# Steps
1. Attempt to set `section_key` to "grid_one" and `layout` to "horizontal" (mismatched).
2. Attempt to save.

# Expected Result
- The Admin Panel prevents saving with mismatched values.
- A validation error is displayed indicating inconsistency between `section_key` and `layout`.
- The section is not saved.

# Notes
- In normal UI flow, the admin selects a single layout option which sets both fields consistently.

# Attachments
