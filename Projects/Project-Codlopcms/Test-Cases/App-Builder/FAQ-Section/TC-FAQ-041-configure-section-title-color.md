---
tc_id: TC-FAQ-041
title: Configure the FAQ Section Title Color
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-019
tags:
  - test-case
  - faq
  - style
  - titleColor
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor | #1a1a2e |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section title color option.
2. Set the title color to #1a1a2e.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.titleColor` attribute.
- The configured title color is stored in the FAQ section configuration.
- The generated JSON contains `style.titleColor: "#1a1a2e"`.

# Notes

# Attachments