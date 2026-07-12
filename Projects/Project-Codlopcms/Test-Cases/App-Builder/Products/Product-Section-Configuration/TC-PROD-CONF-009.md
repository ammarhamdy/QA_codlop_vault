---
tc_id: TC-PROD-CONF-009
title: Verify Admin Can Toggle Transparent Background
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-015
tags:
  - test-case
  - configuration
  - style
  - background
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Background Color | #ff0000 |
| transparentBackground | true |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Set `background` to a visible color (e.g., #ff0000).
2. Toggle `transparentBackground` to true.
3. Save and publish.
4. Generate and inspect the JSON.
5. View on the mobile app.

# Expected Result
- The JSON contains `transparentBackground: true`.
- The mobile app ignores the `background` color value and renders the section with a transparent background.

# Notes
- When `transparentBackground` is false, the section uses the configured `background` color.

# Attachments
