---
tc_id: TC-CUS-REV-071
title: Configure the Top Section Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-028
tags:
  - test-case
  - customer-review
  - style
  - gapTop
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the top gap option.
2. Set the top gap value to 16.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.gapTop` attribute.
- The configured top gap value is stored in `style.gapTop`.
- The generated JSON contains `style.gapTop: 16`.

# Notes

# Attachments