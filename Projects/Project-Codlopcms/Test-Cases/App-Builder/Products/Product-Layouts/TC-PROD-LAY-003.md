---
tc_id: TC-PROD-LAY-003
title: Verify Layout Selection Is Required to Save/Publish the Section
priority: High
status: Ready
type: Validation
linked_requirement: PROD-REQ-008, PROD-REQ-032
tags:
  - test-case
  - layout
  - validation
  - required
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | (not selected) |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Leave the layout/section_key field unselected (default/empty).
2. Attempt to save or publish the section.

# Expected Result
- Save/publish is blocked.
- A validation error is displayed: "Layout selection is required."
- The section remains in its previous state.

# Notes

# Attachments
