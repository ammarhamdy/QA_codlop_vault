---
tc_id: TC-PROD-DEF-003
title: Verify showTitle Defaults to True When Missing from settings
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-040
tags:
  - test-case
  - defaults
  - showTitle
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Featured Products |
| settings.showTitle | (missing) |

# Preconditions
- A Product Section JSON is generated where `showTitle` is omitted from `settings`.
- A section title is provided.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section.

# Expected Result
- `showTitle` defaults to `true`.
- The section title "Featured Products" is displayed on the mobile app.

# Notes
- `showTitle` is the only boolean toggle that defaults to `true`.

# Attachments
