---
tc_id: TC-CUS-REV-067
title: Verify Changing the Section Shadow Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-026
tags:
  - test-case
  - customer-review
  - style
  - shadow
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow (before) | 0 2 4 rgba(0,0,0,0.1) |
| style.shadow (after) | 0 4 8 rgba(0,0,0,0.2) |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with the shadow value above and `style.radius: 12` is open for editing.

# Steps
1. Change the section shadow to "0 4 8 rgba(0,0,0,0.2)".
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the section shadow does not modify other Customer Review section style properties.
- The generated JSON contains the updated shadow value while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments