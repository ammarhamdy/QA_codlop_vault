---
tc_id: TC-CUS-REV-052
title: Verify Changing the Section Title Color Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-021
tags:
  - test-case
  - customer-review
  - style
  - titleColor
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor (before) | #1a1a2e |
| style.titleColor (after) | #0077ff |
| style.background | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.titleColor: "#1a1a2e"` and `style.background: "#f4f6f8"` is open for editing.

# Steps
1. Change the section title color to #0077ff.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the title color does not modify other Customer Review section style properties.
- The generated JSON contains `style.titleColor: "#0077ff"` while the other style values (e.g., `style.background: "#f4f6f8"`) remain unchanged.

# Notes

# Attachments