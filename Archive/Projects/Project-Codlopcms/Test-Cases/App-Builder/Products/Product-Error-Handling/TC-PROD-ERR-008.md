---
tc_id: TC-PROD-ERR-008
title: Verify Unsupported productCardStyle Excludes Section From Rendering
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-045
tags:
  - test-case
  - error-handling
  - unsupported-card-style
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| productCardStyle | invalid_style |

# Preconditions
- A Product Section JSON is generated with an unsupported `productCardStyle` value.
- Mobile app is connected to the backend.

# Steps
1. The mobile app fetches the Home screen configuration.
2. The app processes the section with unsupported `productCardStyle`.
3. Observe the rendered output.

# Expected Result
- The section with unsupported `productCardStyle` is omitted from rendering.
- The error is logged for diagnostics.
- Other sections on the Home screen render normally.
- No crash occurs.

# Notes

# Attachments
