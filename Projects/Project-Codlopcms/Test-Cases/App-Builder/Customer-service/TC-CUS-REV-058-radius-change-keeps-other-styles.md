---
tc_id: TC-CUS-REV-058
title: Verify Changing the Section Radius Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-023
tags:
  - test-case
  - customer-review
  - style
  - radius
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius (before) | 12 |
| style.radius (after) | 24 |
| style.padding | 16 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.radius: 12` and `style.padding: 16` is open for editing.

# Steps
1. Change the section radius to 24.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the section radius does not modify other Customer Review section style properties.
- The generated JSON contains `style.radius: 24` while the other style values (e.g., `style.padding: 16`) remain unchanged.

# Notes

# Attachments