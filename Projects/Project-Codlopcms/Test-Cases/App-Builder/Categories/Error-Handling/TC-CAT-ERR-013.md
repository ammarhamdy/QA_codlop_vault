---
tc_id: TC-CAT-ERR-013
title: Unexpected JSON properties are ignored without error
priority: Low
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
| JSON | Contains extra unknown properties (e.g., `"unknown_field": "test"`) |

# Preconditions
- The Home screen JSON is manually modified to add unexpected properties to the Categories section object.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The section renders normally (extra properties are ignored).
- No error or crash occurs.
- Known required and optional fields are still applied correctly.

# Notes
# Attachments
