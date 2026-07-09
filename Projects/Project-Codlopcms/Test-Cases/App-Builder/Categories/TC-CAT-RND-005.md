---
tc_id: TC-CAT-RND-005
title: Configuration changes reflect after Home screen refresh
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-043
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Initial Value | Updated Value |
| ----- | ------------- | ------------- |
| title | "Old Title" | "New Title" |
| background | #000000 | #FFFFFF |

# Preconditions
- Mobile app is displaying the Home screen with a Categories section (title "Old Title", background #000000).

# Steps
1. In the Admin Panel, change the title to "New Title" and background to "#FFFFFF". Save.
2. On the mobile app, perform a Home screen refresh (pull-to-refresh).
3. Verify the Categories section now shows "New Title" with white background.

# Expected Result
- After refreshing the Home screen, the updated configuration is displayed.
- No app update is required.
- Changes take effect at the next Home screen data fetch.

# Notes
# Attachments
