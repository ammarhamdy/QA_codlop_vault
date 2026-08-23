---
tc_id: TC-CUS-REV-072
title: Configure the Bottom Section Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-028
tags:
  - test-case
  - customer-review
  - style
  - gapBottom
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapBottom | 24 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the bottom gap option.
2. Set the bottom gap value to 24.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.gapBottom` attribute.
- The configured bottom gap value is stored in `style.gapBottom`.
- The generated JSON contains `style.gapBottom: 24`.

# Notes

# Attachments