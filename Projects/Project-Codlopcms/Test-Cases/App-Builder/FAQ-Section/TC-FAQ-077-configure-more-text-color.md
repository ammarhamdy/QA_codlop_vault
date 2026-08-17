---
tc_id: TC-FAQ-077
title: Configure the FAQ More/Action Text Color
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-034
tags:
  - test-case
  - faq
  - settings
  - showMoreTextColor
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor | #0077ff |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the more/action text color option of the FAQ section.
2. Set the more/action text color to #0077ff.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `settings.showMoreTextColor` attribute.
- The configured color is stored in the FAQ section configuration.
- The generated JSON contains `settings.showMoreTextColor: "#0077ff"`.

# Notes

# Attachments