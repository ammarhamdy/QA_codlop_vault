---
tc_id: TC-PROD-CARD-006
title: Verify Unsupported productCardStyle Causes Section Exclusion on Mobile
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-045
tags:
  - test-case
  - card-style
  - error-handling
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| productCardStyle | type_six |

# Preconditions
- A Product Section JSON is generated with an unsupported `productCardStyle` value.
- Mobile app is connected to the backend.

# Steps
1. Generate JSON with `productCardStyle: "type_six"` (unsupported).
2. Load the Home screen on the mobile app.
3. Inspect the rendered sections.

# Expected Result
- The section with the unsupported `productCardStyle` is excluded from rendering.
- No app crash occurs.
- The error is logged for diagnostics.
- Other sections render normally.

# Notes

# Attachments
