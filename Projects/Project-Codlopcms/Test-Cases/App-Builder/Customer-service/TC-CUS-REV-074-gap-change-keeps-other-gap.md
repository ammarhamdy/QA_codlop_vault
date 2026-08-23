---
tc_id: TC-CUS-REV-074
title: Verify Changing One Section Gap Does Not Modify the Other Gap or Other Styles
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-028
tags:
  - test-case
  - customer-review
  - style
  - gapTop
  - gapBottom
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop (before) | 16 |
| style.gapTop (after) | 32 |
| style.gapBottom | 24 |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.gapTop: 16`, `style.gapBottom: 24`, and `style.radius: 12` is open for editing.

# Steps
1. Change the top gap to 32.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing either gap does not modify the other gap or other Customer Review section style properties.
- The generated JSON contains `style.gapTop: 32`, while `style.gapBottom: 24` and `style.radius: 12` remain unchanged.

# Notes

# Attachments