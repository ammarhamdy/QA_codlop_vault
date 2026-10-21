---
tc_id: TC-CAT-RND-008
title: Graceful degradation when Categories JSON is malformed
priority: High
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-045, CAT-REQ-040
tags:
  - test-case
  - mobile
  - rendering
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| Categories JSON | Malformed (unparseable) |

# Preconditions
- The Home screen JSON is manually modified to contain malformed Categories JSON (e.g., trailing comma, unclosed brace).

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The Categories section is excluded from rendering.
- Other Home screen sections continue to render normally.
- No crash occurs.
- The error is logged for diagnostic purposes (not surfaced to the user).

# Notes
# Attachments
