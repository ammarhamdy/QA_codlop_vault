---
tc_id: TC-FAQ-073
title: Verify Changing showBorder Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-031
tags:
  - test-case
  - faq
  - style
  - showBorder
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder (before) | true |
| style.radius | 12 |
| style.showBorder (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.showBorder: true` and `style.radius: 12` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change `style.showBorder` from `true` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing `showBorder` does not modify other FAQ section style properties.
- The generated JSON contains `style.showBorder: false` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments