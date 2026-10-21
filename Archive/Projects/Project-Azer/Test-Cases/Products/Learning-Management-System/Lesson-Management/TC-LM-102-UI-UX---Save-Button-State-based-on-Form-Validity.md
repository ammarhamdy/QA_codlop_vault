---
tc_id: TC-LM-102
title: UI/UX - Save Button State based on Form Validity
priority: Medium
status: Ready
type: UI
linked_requirement: REQ-002
tags:
  - test-case
  - ui-ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Form State | Incomplete fields |

# Preconditions
- Admin loads the creation page.

# Steps
1. Observe the 'Save/Submit' button on initial page load.
2. Complete required fields one by one and observe the button state.

# Expected Result
- The button is visually disabled (greyed out and unclickable) on load, and automatically enables (turns active color and clickable) once all mandatory fields are valid.

# Notes

# Attachments
