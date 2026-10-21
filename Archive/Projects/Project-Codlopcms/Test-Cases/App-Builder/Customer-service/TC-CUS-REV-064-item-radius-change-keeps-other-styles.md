---
tc_id: TC-CUS-REV-064
title: Verify Changing the Review Item Radius Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-025
tags:
  - test-case
  - customer-review
  - style
  - itemRadius
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius (before) | 12 |
| style.itemRadius (after) | 8 |
| style.itemBackground | #f4f6f8 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.itemRadius: 12` and `style.itemBackground: "#f4f6f8"` is open for editing.

# Steps
1. Change the review item radius to 8.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the review item radius does not modify other Customer Review section style properties.
- The generated JSON contains `style.itemRadius: 8` while the other style values (e.g., `style.itemBackground: "#f4f6f8"`) remain unchanged.

# Notes

# Attachments