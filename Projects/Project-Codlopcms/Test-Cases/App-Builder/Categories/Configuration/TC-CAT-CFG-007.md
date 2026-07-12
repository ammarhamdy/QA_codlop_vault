---
tc_id: TC-CAT-CFG-007
title: Invalid hex color values are rejected
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-010
tags:
  - test-case
  - admin-panel
  - configuration
  - validation
run_result: pass
---

# Test Data
| Field        | Value                   |
| ------------ | ----------------------- |
| background   | "#GGGGGG" (invalid hex) |
| titleColor   | "red" (named color)     |
| textColor    | "#FFFF" (short hex)     |
| ctaTextColor | "123456" (missing #)    |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. For each invalid color value, attempt to enter it in the respective color field.
2. Observe the UI behavior.
3. Attempt to save the section with an invalid color.

# Expected Result
- Invalid hex values are rejected at input time (inline validation error or picker rejection).
- Named colors, short hex, and missing `#` are not accepted.
- The section cannot be saved with invalid color values.
- A clear error message is shown.

# Notes
# Attachments
