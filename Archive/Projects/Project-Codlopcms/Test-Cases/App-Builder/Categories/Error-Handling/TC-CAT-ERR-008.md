---
tc_id: TC-CAT-ERR-008
title: Missing enabled field defaults to false (fail-safe)
priority: Medium
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-045, Assumption A-01
tags:
  - test-case
  - mobile
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| JSON | `enabled` field is missing |

# Preconditions
- The Home screen JSON is manually modified to remove the `enabled` field from a Categories section.

# Steps
1. Load the Home screen on the mobile app.
2. Observe rendering behavior.

# Expected Result
- The section is treated as disabled (enabled=false, fail-safe).
- The section is excluded from rendering.
- No crash occurs.
- Adjacent sections render normally without a gap.

# Notes
This validates Assumption A-01: missing enabled defaults to false.
# Attachments
