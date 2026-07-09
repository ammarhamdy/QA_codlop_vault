---
tc_id: TC-PROD-SRC-012
title: Verify Product Source Is Required to Save/Publish
priority: High
status: Ready
type: Validation
linked_requirement: PROD-REQ-025, PROD-REQ-032
tags:
  - test-case
  - source
  - validation
  - required
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | (not selected) |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Leave the `productSource` field unselected.
2. Attempt to save or publish.

# Expected Result
- Save/publish is blocked.
- A validation error is displayed: "Product source selection is required."
- The section remains in its previous state.

# Notes

# Attachments
