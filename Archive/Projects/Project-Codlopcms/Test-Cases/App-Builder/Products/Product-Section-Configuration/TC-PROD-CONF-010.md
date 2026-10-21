---
tc_id: TC-PROD-CONF-010
title: Verify Admin Can Toggle Section Border Visibility (hideBorder)
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-016
tags:
  - test-case
  - configuration
  - border
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| hideBorder | true |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Toggle `hideBorder` to true.
2. Save and publish.
3. Generate and inspect the JSON.
4. View on the mobile app.

# Expected Result
- The JSON contains `hideBorder: true`.
- The mobile app does not draw a border around the section container.

# Notes
- When `hideBorder` is false (default), the section border is visible.

# Attachments
