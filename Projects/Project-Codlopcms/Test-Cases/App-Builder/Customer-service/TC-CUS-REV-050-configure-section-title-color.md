---
tc_id: TC-CUS-REV-050
title: Configure the Customer Review Section Title Color
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-021
tags:
  - test-case
  - customer-review
  - style
  - titleColor
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor | #1a1a2e |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section title color option.
2. Set the title color to #1a1a2e.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.titleColor` attribute.
- The configured title color is stored in the section configuration.
- The generated JSON contains the configured value in `style.titleColor`.

# Notes

# Attachments