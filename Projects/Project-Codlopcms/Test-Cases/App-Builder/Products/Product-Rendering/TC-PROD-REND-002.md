---
tc_id: TC-PROD-REND-002
title: Verify Mobile App Fetches Product Section JSON on Home Screen Refresh
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-033, PROD-REQ-038
tags:
  - test-case
  - rendering
  - refresh
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Original Title | Old Title |
| Updated Title | New Refresh Title |

# Preconditions
- A Product Section is published and visible on mobile.
- Admin changes the section title to "New Refresh Title" and publishes the change.

# Steps
1. Open the mobile app Home screen (original title is visible).
2. Perform a pull-to-refresh on the Home screen.
3. Observe the updated section.

# Expected Result
- The Home screen re-fetches the latest JSON configuration.
- After refresh, the section title is updated to "New Refresh Title".
- No app update is required to see the change.

# Notes

# Attachments
