---
tc_id: TC-CAT-VAL-001
title: Admin Panel rejects invalid hex color values at input time
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-010
tags:
  - test-case
  - admin-panel
  - validation
run_result: pass
---

# Test Data
| Field | Invalid Values |
| ----- | -------------- |
| background | "#GGGGGG", "red", "#FFFF", "123456", "#12345" |

# Preconditions
- A Categories section is in editing mode with the style section expanded.

# Steps
1. For each invalid value in test data, attempt to enter it in the background field.
2. Observe inline validation behavior.
3. Attempt to save the section.

# Expected Result
- All invalid hex values are rejected at input time.
- A validation error is displayed (e.g., "Must be a valid hex color").
- Save is blocked if any invalid color value is present.

# Notes
# Attachments
