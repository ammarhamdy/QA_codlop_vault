---
tc_id: TC-PROD-LAY-008
title: Verify Unsupported layout Value Causes Section Exclusion on Mobile
priority: High
status:
type: Functional
linked_requirement: PROD-REQ-044
tags:
  - test-case
  - layout
  - error-handling
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| layout | five_column_grid |

# Preconditions
- A Product Section JSON is generated with an unsupported `layout` value.
- Mobile app is connected to the backend.

# Steps
1. Generate JSON with `layout: "five_column_grid"` (unsupported value).
2. Load the Home screen on the mobile app.
3. Inspect the rendered sections.

# Expected Result
- The section with the unsupported `layout` is excluded from rendering.
- No app crash occurs.
- The error is logged for diagnostics.
- Other sections render normally.

# Notes

# Attachments
