---
tc_id: TC-CAT-ERR-011
title: Unsupported enum value in settings is handled gracefully
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
| settings.highlight | "super_badge" (unsupported value) |
| settings.categoryType | "unknown_type" (unsupported value) |

# Preconditions
- The Home screen JSON is manually modified to contain unsupported enum values in settings.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The section renders (does not crash).
- The specific unsupported setting falls back to its default value.
- Other settings and the overall section render correctly.
- An error is logged.

# Notes
# Attachments
