---
tc_id: TC-FAQ-058
title: Verify Changing Shadow Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-024
tags:
  - test-case
  - faq
  - style
  - shadow
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow (before) | 0 2 4 rgba(0,0,0,0.1) |
| style.titleGap | 8 |
| style.shadow (after) | 0 4 8 rgba(0,0,0,0.2) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with the specified shadow and `style.titleGap: 8` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the shadow value to "0 4 8 rgba(0,0,0,0.2)".
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the section shadow does not modify other FAQ section style properties.
- The generated JSON contains the new shadow value while the other style values (e.g., `style.titleGap: 8`) remain unchanged.

# Notes

# Attachments