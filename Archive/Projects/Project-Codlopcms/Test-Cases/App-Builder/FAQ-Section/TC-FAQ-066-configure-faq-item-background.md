---
tc_id: TC-FAQ-066
title: Configure the FAQ Item Background Color
priority: Medium
status:
  - closed
type: Functional
linked_requirement: FAQ-REQ-027
tags:
  - test-case
  - faq
  - style
  - itemBackground
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ item background option.
2. Set the item background color to #f4f6f8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.itemBackground` attribute.
- The configured item background color is stored in the FAQ section configuration.
- The generated JSON contains `style.itemBackground: "#f4f6f8"`.

# Notes

# Attachments