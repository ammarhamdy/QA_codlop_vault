---
tc_id: TC-CUS-REV-077
title: Verify Changing the Review Item Background Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-029
tags:
  - test-case
  - customer-review
  - style
  - itemBackground
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground (before) | #f4f6f8 |
| style.itemBackground (after) | #ffffff |
| style.itemRadius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.itemBackground: "#f4f6f8"` and `style.itemRadius: 12` is open for editing.

# Steps
1. Change the review item background color to #ffffff.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the review item background color does not modify other Customer Review section style properties.
- The generated JSON contains `style.itemBackground: "#ffffff"` while the other style values (e.g., `style.itemRadius: 12`) remain unchanged.

# Notes

# Attachments