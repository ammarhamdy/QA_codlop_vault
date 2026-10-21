---
tc_id: TC-CUS-REV-008
title: Verify the Administrator Cannot Assign an Unsupported Layout to the Customer Review Section
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-004
tags:
  - test-case
  - customer-review
  - layout
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Current `layout` value | slider-reviews |
| Attempted `layout` value | grid |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section is open for editing.

# Steps
1. Locate the Customer Review section `layout` attribute.
2. Attempt to assign an unsupported layout (e.g., `grid`).
3. Attempt to save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `layout` attribute.

# Expected Result
- The administrator cannot assign an unsupported layout to a Customer Review section.
- The `layout` value remains `slider-reviews`.
- The generated JSON still contains `"layout": "slider-reviews"`.

# Notes

# Attachments