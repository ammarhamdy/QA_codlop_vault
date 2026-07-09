---
tc_id: TC-PROD-CONF-018
title: Verify Admin Can Configure Section Background and Text Colors with Valid Hex Values
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-012
tags:
  - test-case
  - configuration
  - colors
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Background | #1a1a2e |
| titleColor | #ffffff |
| textColor | #e0e0e0 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Enter valid hex color values for background, titleColor, and textColor.
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains `background: "#1a1a2e"`, `titleColor: "#ffffff"`, `textColor: "#e0e0e0"` inside the `style` object.
- The mobile app applies the colors to the corresponding visual elements.

# Notes

# Attachments
