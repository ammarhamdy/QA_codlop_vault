---
tc_id: TC-FAQ-063
title: Configure the FAQ Section Bottom Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-026
tags:
  - test-case
  - faq
  - style
  - gapBottom
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapBottom | 24 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the bottom gap option of the FAQ section.
2. Set the bottom gap value to 24.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.gapBottom` attribute.
- The configured bottom gap value is stored in `style.gapBottom`.
- The generated JSON contains `style.gapBottom: 24`.

# Notes

# Attachments