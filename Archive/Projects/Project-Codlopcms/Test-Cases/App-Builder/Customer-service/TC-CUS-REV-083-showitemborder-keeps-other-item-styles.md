---
tc_id: TC-CUS-REV-083
title: Verify Changing showItemBorder Does Not Modify Other Review Item Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-031
tags:
  - test-case
  - customer-review
  - style
  - showItemBorder
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showItemBorder (before) | true |
| style.showItemBorder (after) | false |
| style.itemRadius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.showItemBorder: true` and `style.itemRadius: 12` is open for editing.

# Steps
1. Set `style.showItemBorder` to `false`.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing `showItemBorder` does not modify other customer review item style properties.
- The generated JSON reflects `style.showItemBorder: false` while `style.itemRadius: 12` remains unchanged.

# Notes

# Attachments