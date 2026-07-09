---
tc_id: TC-CAT-ERR-001
title: Missing required top-level field causes section exclusion
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-041, CAT-REQ-045
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| JSON | Missing `type` field entirely |

# Preconditions
- The Home screen JSON is manually modified to remove the `type` field from a Categories section.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The Categories section fails validation and is excluded from rendering.
- Other Home screen sections render normally.
- An error is logged for diagnostics.
- No error is surfaced to the end user.

# Notes
Repeat for each required field: id, section_key, type, layout, enabled, style, settings.
# Attachments
