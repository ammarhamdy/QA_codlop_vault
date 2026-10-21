---
tc_id: TC-CAT-ERR-004
title: Unsupported layout value causes section exclusion
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-041
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| layout | "unsupported_layout_xyz" |

# Preconditions
- The Home screen JSON is manually modified to set `layout` to an unsupported value.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The Categories section is excluded from rendering.
- Other Home screen sections render normally.
- An error is logged for diagnostics.
- No crash occurs.

# Notes
# Attachments
