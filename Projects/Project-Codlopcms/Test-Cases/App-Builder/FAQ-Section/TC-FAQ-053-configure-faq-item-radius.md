---
tc_id: TC-FAQ-053
title: Configure the FAQ Item Corner Radius
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-023
tags:
  - test-case
  - faq
  - style
  - itemRadius
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius | 8 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ item radius option.
2. Set the item radius value to 8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.itemRadius` attribute.
- The configured item radius value is stored in the FAQ section configuration.
- The generated JSON contains `style.itemRadius: 8`.

# Notes

# Attachments