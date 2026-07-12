---
tc_id: TC-CAT-CFG-010
title: Reject negative spacing and enforce maximum values
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-012
tags:
  - test-case
  - admin-panel
  - configuration
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| radius | -5 |
| padding | 99999 |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Attempt to set radius to -5.
2. Observe UI behavior.
3. Attempt to set padding to an excessively large value (e.g., 99999).
4. Observe UI behavior.
5. Attempt to save the section with these values.

# Expected Result
- Negative values are rejected (inline validation or blocked at input).
- Excessively large values beyond a sane maximum are rejected.
- A clear error or constraint message is shown.

# Notes
# Attachments
