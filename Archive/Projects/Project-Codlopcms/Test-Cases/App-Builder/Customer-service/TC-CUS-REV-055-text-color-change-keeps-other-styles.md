---
tc_id: TC-CUS-REV-055
title: Verify Changing the Section Text Color Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-022
tags:
  - test-case
  - customer-review
  - style
  - textColor
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.textColor (before) | #333333 |
| style.textColor (after) | #666666 |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.textColor: "#333333"` and `style.radius: 12` is open for editing.

# Steps
1. Change the section text color to #666666.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the text color does not modify other Customer Review section style properties.
- The generated JSON contains `style.textColor: "#666666"` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments