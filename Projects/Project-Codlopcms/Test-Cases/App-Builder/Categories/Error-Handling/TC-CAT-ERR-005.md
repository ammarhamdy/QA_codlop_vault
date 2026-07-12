---
tc_id: TC-CAT-ERR-005
title: Invalid style value falls back to renderer default
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-045
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | "not-a-color" (invalid) |
| style.radius | -5 (negative) |

# Preconditions
- The Home screen JSON is manually modified to contain invalid style values.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering of the Categories section.

# Expected Result
- The section renders (does not crash).
- The specific invalid style property falls back to the renderer's default.
- Other valid style properties are applied normally.
- The rest of the section renders correctly.
- An error is logged for diagnostics.

# Notes
# Attachments
