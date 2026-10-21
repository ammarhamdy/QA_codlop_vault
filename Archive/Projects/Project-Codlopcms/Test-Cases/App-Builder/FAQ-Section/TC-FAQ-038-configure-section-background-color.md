---
tc_id: TC-FAQ-038
title: Configure the FAQ Section Background Color
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-018
tags:
  - test-case
  - faq
  - style
  - background
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section background color option.
2. Set the background color to #f4f6f8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.background` attribute.
- The configured background color is stored in the FAQ section configuration.
- The generated JSON contains `style.background: "#f4f6f8"`.

# Notes

# Attachments