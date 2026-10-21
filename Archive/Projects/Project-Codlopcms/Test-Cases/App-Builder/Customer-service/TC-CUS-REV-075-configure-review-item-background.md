---
tc_id: TC-CUS-REV-075
title: Configure the Review Item Background Color
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-029
tags:
  - test-case
  - customer-review
  - style
  - itemBackground
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the review item background color option.
2. Set the review item background color to #f4f6f8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.itemBackground` attribute.
- The configured item background color is stored in the section configuration.
- The generated JSON contains `style.itemBackground: "#f4f6f8"`.

# Notes

# Attachments