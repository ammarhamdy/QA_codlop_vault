---
tc_id: TC-CUS-REV-089
title: Verify Changing showBorder Does Not Modify Other Section Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-033
tags:
  - test-case
  - customer-review
  - style
  - showBorder
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder (before) | true |
| style.showBorder (after) | false |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.showBorder: true` and `style.radius: 12` is open for editing.

# Steps
1. Set `style.showBorder` to `false`.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing `showBorder` does not modify other Customer Review section style properties.
- The generated JSON reflects `style.showBorder: false` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments