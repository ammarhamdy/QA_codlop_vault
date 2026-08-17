---
tc_id: TC-FAQ-059
title: Configure the FAQ Title Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-025
tags:
  - test-case
  - faq
  - style
  - titleGap
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap | 8 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the title gap option of the FAQ section.
2. Set the title gap value to 8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.titleGap` attribute.
- The configured title gap value is stored in the FAQ section configuration.
- The generated JSON contains `style.titleGap: 8`.

# Notes

# Attachments