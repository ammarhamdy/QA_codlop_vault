---
tc_id: TC-FAQ-050
title: Configure the FAQ Section Padding
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-022
tags:
  - test-case
  - faq
  - style
  - padding
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.padding | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section padding option.
2. Set the padding value to 16.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.padding` attribute.
- The configured padding value is stored in the FAQ section configuration.
- The generated JSON contains `style.padding: 16`.

# Notes

# Attachments