---
tc_id: TC-FAQ-049
title: Verify Changing Section Radius Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-021
tags:
  - test-case
  - faq
  - style
  - radius
  - isolation
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius (before) | 12 |
| style.padding | 16 |
| style.radius (after) | 24 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with `style.radius: 12` and `style.padding: 16` exists and is open for editing.

# Steps
1. Open the FAQ section for editing.
2. Change the radius value to 24.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the style object.

# Expected Result
- Changing the section radius does not modify other FAQ section style properties.
- The generated JSON contains `style.radius: 24` while the other style values (e.g., `style.padding: 16`) remain unchanged.

# Notes

# Attachments