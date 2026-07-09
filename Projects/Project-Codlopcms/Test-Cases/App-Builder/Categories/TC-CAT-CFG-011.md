---
tc_id: TC-CAT-CFG-011
title: Configure shadow style from predefined options
priority: Low
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-013
tags:
  - test-case
  - admin-panel
  - configuration
  - style
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| shadow | "none" (and other supported values) |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Open the shadow selector.
2. Verify it presents a closed list of options (dropdown).
3. Select "none" and save.
4. Select each other supported shadow value and save.
5. Inspect the generated JSON for each selection.
6. Verify the mobile app renders the corresponding shadow effect.

# Expected Result
- Shadow is selected from a closed list, not free-text.
- Unsupported values cannot be entered or saved.
- Generated JSON contains `"shadow": "<selected_value>"`.
- Mobile app renders the section with the configured shadow.

# Notes
# Attachments
