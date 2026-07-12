---
tc_id: TC-CAT-ERR-014
title: Extremely long title is handled gracefully
priority: Low
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-004, CAT-REQ-045
tags:
  - test-case
  - boundary
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | A string of 500+ characters |

# Preconditions
- The Home screen JSON is manually modified to include an excessively long title.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the title rendering.

# Expected Result
- The section renders without crashing.
- The title is displayed (potentially truncated or wrapped depending on renderer behavior).
- No error is surfaced to the user.

# Notes
Character-length limits to be confirmed (see spec Open Questions).
# Attachments
