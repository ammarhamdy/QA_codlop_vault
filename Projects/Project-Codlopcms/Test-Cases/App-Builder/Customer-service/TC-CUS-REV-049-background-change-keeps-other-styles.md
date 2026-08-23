---
tc_id: TC-CUS-REV-049
title: Verify Changing the Section Background Color Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-020
tags:
  - test-case
  - customer-review
  - style
  - background
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background (before) | #f4f6f8 |
| style.background (after) | #ffffff |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.background: "#f4f6f8"` and `style.radius: 12` is open for editing.

# Steps
1. Change the section background color to #ffffff.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the background color does not modify other Customer Review section style properties.
- The generated JSON contains `style.background: "#ffffff"` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments