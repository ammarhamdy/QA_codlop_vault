---
tc_id: TC-CAT-ERR-006
title: Invalid settings value falls back to renderer default
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
| settings.showTitle | "yes" (non-boolean) |
| settings.columns | -1 (out of range) |

# Preconditions
- The Home screen JSON is manually modified to contain invalid settings values.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The section renders (does not crash).
- The specific invalid setting falls back to its default/renderer-defined value.
- Other valid settings are applied normally.
- The rest of the section renders correctly.

# Notes
# Attachments
