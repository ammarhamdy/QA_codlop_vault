---
tc_id: TC-FAQ-056
title: Configure the FAQ Section Shadow
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-024
tags:
  - test-case
  - faq
  - style
  - shadow
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow | 0 2 4 rgba(0,0,0,0.1) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section shadow option.
2. Set the shadow value to "0 2 4 rgba(0,0,0,0.1)".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.shadow` attribute.
- The configured shadow value is stored in the FAQ section configuration.
- The generated JSON contains the configured value in `style.shadow`.

# Notes

# Attachments