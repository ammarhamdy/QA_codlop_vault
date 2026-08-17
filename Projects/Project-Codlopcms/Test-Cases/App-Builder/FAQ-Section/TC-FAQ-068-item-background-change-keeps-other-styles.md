---
tc_id: TC-FAQ-068
title: Verify Changing FAQ Item Background Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-027
tags:
  - test-case
  - faq
  - style
  - itemBackground
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground (before) | #f4f6f8 |
| style.itemRadius | 8 |
| style.itemBackground (after) | #e8f0fe |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.itemBackground: "#f4f6f8"` and `style.itemRadius: 8` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the FAQ item background color to #e8f0fe.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the FAQ item background color does not modify other FAQ section style properties.
- The generated JSON contains `style.itemBackground: "#e8f0fe"` while the other style values (e.g., `style.itemRadius: 8`) remain unchanged.

# Notes

# Attachments