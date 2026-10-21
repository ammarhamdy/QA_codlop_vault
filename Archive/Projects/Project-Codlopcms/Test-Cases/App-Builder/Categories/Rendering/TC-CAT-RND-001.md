---
tc_id: TC-CAT-RND-001
title: Mobile app downloads and parses Categories JSON as part of Home screen config
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-040, CAT-REQ-039
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Home screen JSON | Contains Categories section object |

# Preconditions
- Admin Panel has published a valid Categories section.
- Mobile app is on the Home screen.

# Steps
1. Trigger a Home screen refresh (pull-to-refresh or reopen).
2. Observe network request for Home screen configuration.
3. Verify the Categories JSON is included in the response.
4. Verify the app parses the JSON into an internal model without error.

# Expected Result
- The Home screen configuration fetch includes the Categories section JSON.
- The mobile app successfully parses the JSON.
- The Categories section renders on the Home screen.
- Rendering is driven purely by the JSON, with no hardcoded layout logic.

# Notes
# Attachments
