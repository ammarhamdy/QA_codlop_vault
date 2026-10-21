---
tc_id: TC-CUS-REV-070
title: Verify Changing the Title Gap Does Not Modify Other Style Properties
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-027
tags:
  - test-case
  - customer-review
  - style
  - titleGap
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap (before) | 12 |
| style.titleGap (after) | 16 |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `style.titleGap: 12` and `style.radius: 12` is open for editing.

# Steps
1. Change the title gap to 16.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the `style` object.

# Expected Result
- Changing the title gap does not modify other Customer Review section style properties.
- The generated JSON contains `style.titleGap: 16` while the other style values (e.g., `style.radius: 12`) remain unchanged.

# Notes

# Attachments