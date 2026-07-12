---
tc_id: TC-PROD-DEF-004
title: Verify Boolean Settings Default to False When Missing (Except showTitle)
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-040
tags:
  - test-case
  - defaults
  - boolean-toggles
run_result: pass
---

# Test Data
| Field                       | Value     |
| --------------------------- | --------- |
| settings.showPrice          | (missing) |
| settings.highlight          | (missing) |
| style.transparentBackground | (missing) |
| style.hideBorder            | (missing) |
| style.hideItemBorder        | (missing) |

# Preconditions
- A Product Section JSON is generated with all boolean toggles omitted.
- Section is enabled and published.

# Steps
1. The mobile app fetches the JSON.
2. The app renders the section.

# Expected Result
- All missing boolean toggles default to `false`:
  - `showPrice`: false (price is not shown)
  - `transparentBackground`: false (background is opaque)
  - `hideBorder`: false (border is visible)
  - `hideItemBorder`: false (item borders are visible)
- The section renders with these defaults.

# Notes

# Attachments
