---
tc_id: TC-FAQ-007
title: Prevent Assignment of an Unsupported FAQ Section Layout
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-004
tags:
  - test-case
  - faq
  - layout
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Attempted `layout` value | list (unsupported) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Attempt to assign an unsupported layout value (e.g., `list`) to the FAQ section.
2. Save the section.
3. Retrieve the generated JSON configuration.

# Expected Result
- The administrator cannot assign an unsupported layout to the FAQ section.
- The generated JSON still contains `"layout": "accordion"` for the FAQ section.

# Notes

# Attachments