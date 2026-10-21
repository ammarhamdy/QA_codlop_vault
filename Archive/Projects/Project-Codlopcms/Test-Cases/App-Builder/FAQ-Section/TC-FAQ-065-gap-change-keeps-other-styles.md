---
tc_id: TC-FAQ-065
title: Verify Changing One Gap Does Not Modify the Other Gap or Other Styles
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-026
tags:
  - test-case
  - faq
  - style
  - gapTop
  - gapBottom
  - isolation
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop (before) | 16 |
| style.gapBottom (before) | 24 |
| style.radius | 12 |
| style.gapTop (after) | 32 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.gapTop: 16`, `style.gapBottom: 24`, and `style.radius: 12` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the top gap value to 32.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the top gap does not modify the bottom gap or other FAQ section style properties.
- The generated JSON contains `style.gapTop: 32`, while `style.gapBottom: 24` and `style.radius: 12` remain unchanged.

# Notes

# Attachments