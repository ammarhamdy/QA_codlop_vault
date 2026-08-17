---
tc_id: TC-FAQ-046
title: Verify Changing Text Color Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-020
tags:
  - test-case
  - faq
  - style
  - textColor
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.textColor (before) | #444444 |
| style.radius | 12 |
| style.textColor (after) | #666666 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.textColor: "#444444"` and `style.radius: 12` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the text color to #666666.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the text color does not modify other FAQ section style properties.
- The generated JSON contains `style.textColor: "#666666"` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments