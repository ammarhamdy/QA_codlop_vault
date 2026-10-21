---
tc_id: TC-FAQ-055
title: Verify Changing FAQ Item Radius Does Not Modify Other Style Properties
priority: Medium
status:
  - closed
type: Functional
linked_requirement: FAQ-REQ-023
tags:
  - test-case
  - faq
  - style
  - itemRadius
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius (before) | 8 |
| style.itemBackground | #f4f6f8 |
| style.itemRadius (after) | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.itemRadius: 8` and `style.itemBackground: "#f4f6f8"` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the FAQ item radius value to 12.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the FAQ item radius does not modify other FAQ section style properties.
- The generated JSON contains `style.itemRadius: 12` while the other style values (e.g., `style.itemBackground: "#f4f6f8"`) remain unchanged.

# Notes

# Attachments