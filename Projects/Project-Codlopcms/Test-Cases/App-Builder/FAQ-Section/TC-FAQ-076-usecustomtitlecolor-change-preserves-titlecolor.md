---
tc_id: TC-FAQ-076
title: Verify Changing useCustomTitleColor Does Not Remove the Configured titleColor Value
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-032
tags:
  - test-case
  - faq
  - style
  - useCustomTitleColor
  - titleColor
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor | #1a1a2e |
| style.useCustomTitleColor (before) | true |
| style.useCustomTitleColor (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.titleColor: "#1a1a2e"` and `style.useCustomTitleColor: true` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change `style.useCustomTitleColor` from `true` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- The configured `titleColor` value is preserved regardless of the `useCustomTitleColor` state.
- The generated JSON reflects `useCustomTitleColor: false` and still contains `style.titleColor: "#1a1a2e"`.

# Notes

# Attachments