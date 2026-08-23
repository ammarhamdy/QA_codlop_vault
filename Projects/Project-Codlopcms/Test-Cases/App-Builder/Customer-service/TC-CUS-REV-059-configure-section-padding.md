---
tc_id: TC-CUS-REV-059
title: Configure the Customer Review Section Padding
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-024
tags:
  - test-case
  - customer-review
  - style
  - padding
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.padding | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section padding option.
2. Set the padding value to 16.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.padding` attribute.
- The configured padding value is stored in the section configuration.
- The generated JSON contains `style.padding: 16`.

# Notes

# Attachments