---
tc_id: TC-FAQ-043
title: Verify Changing Title Color Does Not Modify Other Style Properties
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-019
tags:
  - test-case
  - faq
  - style
  - titleColor
  - isolation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor (before) | #1a1a2e |
| style.background | #ffffff |
| style.titleColor (after) | #333333 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.titleColor: "#1a1a2e"` and `style.background: "#ffffff"` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the title color to #333333.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the title color does not modify other FAQ section style properties.
- The generated JSON contains `style.titleColor: "#333333"` while the other style values (e.g., `style.background: "#ffffff"`) remain unchanged.

# Notes

# Attachments