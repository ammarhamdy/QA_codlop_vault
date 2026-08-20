---
tc_id: TC-CUS-REV-080
title: Verify Changing showItemBackground Does Not Modify the Configured itemBackground
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-030
tags:
  - test-case
  - customer-review
  - style
  - showItemBackground
  - itemBackground
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |
| style.showItemBackground (before) | true |
| style.showItemBackground (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.itemBackground: "#f4f6f8"` and `style.showItemBackground: true` is open for editing.

# Steps
1. Note the configured `style.itemBackground` value.
2. Set `style.showItemBackground` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `style` object.

# Expected Result
- Changing `showItemBackground` does not modify the configured `itemBackground` value.
- The generated JSON reflects `style.showItemBackground: false` and still contains `style.itemBackground: "#f4f6f8"`.

# Notes

# Attachments