---
tc_id: TC-FAQ-062
title: Configure the FAQ Section Top Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-026
tags:
  - test-case
  - faq
  - style
  - gapTop
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the top gap option of the FAQ section.
2. Set the top gap value to 16.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.gapTop` attribute.
- The configured top gap value is stored in `style.gapTop`.
- The generated JSON contains `style.gapTop: 16`.

# Notes

# Attachments