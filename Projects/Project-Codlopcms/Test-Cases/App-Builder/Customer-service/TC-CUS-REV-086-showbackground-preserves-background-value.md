---
tc_id: TC-CUS-REV-086
title: Verify Changing showBackground Does Not Modify the Configured background
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-032
tags:
  - test-case
  - customer-review
  - style
  - showBackground
  - background
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground (before) | true |
| style.showBackground (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.background: "#f4f6f8"` and `style.showBackground: true` is open for editing.

# Steps
1. Note the configured `style.background` value.
2. Set `style.showBackground` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `style` object.

# Expected Result
- Changing `showBackground` does not modify the configured `background` value.
- The generated JSON reflects `style.showBackground: false` and still contains `style.background: "#f4f6f8"`.

# Notes

# Attachments