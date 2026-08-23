---
tc_id: TC-CUS-REV-053
title: Configure the Customer Review Section Text Color
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-022
tags:
  - test-case
  - customer-review
  - style
  - textColor
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.textColor | #333333 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section text color option.
2. Set the text color to #333333.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.textColor` attribute.
- The configured text color is stored in the section configuration.
- The generated JSON contains the configured value in `style.textColor`.

# Notes

# Attachments