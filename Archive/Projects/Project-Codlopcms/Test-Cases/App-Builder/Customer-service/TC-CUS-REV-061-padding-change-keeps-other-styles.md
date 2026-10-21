---
tc_id: TC-CUS-REV-061
title: Verify Changing the Section Padding Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-024
tags:
  - test-case
  - customer-review
  - style
  - padding
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.padding (before) | 16 |
| style.padding (after) | 24 |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.padding: 16` and `style.radius: 12` is open for editing.

# Steps
1. Change the section padding to 24.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the section padding does not modify other Customer Review section style properties.
- The generated JSON contains `style.padding: 24` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments