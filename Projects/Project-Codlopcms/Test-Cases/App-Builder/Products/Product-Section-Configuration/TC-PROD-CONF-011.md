---
tc_id: TC-PROD-CONF-011
title: Verify Admin Can Toggle Item Border Visibility (hideItemBorder)
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-017
tags:
  - test-case
  - configuration
  - border
  - card
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| hideItemBorder | true |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Toggle `hideItemBorder` to true.
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains `hideItemBorder: true`.
- The mobile app does not draw borders around individual product cards.

# Notes
- When `hideItemBorder` is false (default), product card borders are visible.

# Attachments
