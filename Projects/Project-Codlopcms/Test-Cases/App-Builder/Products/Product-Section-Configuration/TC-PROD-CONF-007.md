---
tc_id: TC-PROD-CONF-007
title: Verify Admin Can Toggle Section Title Visibility (showTitle)
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-019
tags:
  - test-case
  - configuration
  - title
  - visibility
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Featured |
| showTitle | false |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section with a title is open for editing.

# Steps
1. Set `showTitle` to false.
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains `showTitle: false`.
- The mobile app does not render the title text or its allocated spacing (`titleGap`).
- No empty space is reserved where the title would appear.

# Notes
- When `showTitle` is true (default), the title is displayed.

# Attachments
