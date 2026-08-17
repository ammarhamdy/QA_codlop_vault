---
tc_id: TC-FAQ-044
title: Configure the FAQ Section Text Color
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-020
tags:
  - test-case
  - faq
  - style
  - textColor
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.textColor | #444444 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section text color option.
2. Set the text color to #444444.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.textColor` attribute.
- The configured text color is stored in the FAQ section configuration.
- The generated JSON contains `style.textColor: "#444444"`.

# Notes

# Attachments