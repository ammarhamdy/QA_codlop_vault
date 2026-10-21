---
tc_id: TC-CAT-ERR-010
title: Malformed JSON causes Categories section exclusion
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-040, CAT-REQ-045
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Categories JSON | Corrupted — contains unescaped control characters |

# Preconditions
- The Home screen JSON is manually corrupted to be unparseable (e.g., broken JSON syntax).

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The entire Categories section is excluded from rendering.
- Other Home screen sections continue to render normally.
- No crash occurs.
- The error is logged for diagnostic purposes.

# Notes
# Attachments
