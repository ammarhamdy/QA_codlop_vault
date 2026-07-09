---
tc_id: TC-CAT-ERR-015
title: null values in required fields are handled gracefully
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-045
tags:
  - test-case
  - mobile
  - error-handling
  - boundary
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| JSON | Required fields set to null instead of their expected types |

# Preconditions
- The Home screen JSON is manually modified to set required fields to null (e.g., `"type": null, "layout": null`).

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The section fails validation (null is not a valid string/boolean/object).
- The section is excluded from rendering.
- Other sections render normally.
- No crash occurs.

# Notes
# Attachments
