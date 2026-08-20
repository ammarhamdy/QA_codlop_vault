---
tc_id: TC-CUS-REV-047
title: Configure the Customer Review Section Background Color
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-020
tags:
  - test-case
  - customer-review
  - style
  - background
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section background color option.
2. Set the background color to #f4f6f8.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.background` attribute.
- The configured background color is stored in the section configuration.
- The generated JSON contains the configured value in `style.background`.

# Notes

# Attachments