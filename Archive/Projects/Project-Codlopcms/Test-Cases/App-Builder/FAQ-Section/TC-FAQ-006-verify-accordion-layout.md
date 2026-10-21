---
tc_id: TC-FAQ-006
title: Verify FAQ Section Layout Is Fixed to "accordion"
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-004
tags:
  - test-case
  - faq
  - layout
  - json
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expected `layout` value | accordion |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created.

# Steps
1. Create an FAQ section in the App Builder.
2. Retrieve the generated JSON configuration.
3. Inspect the `layout` attribute of the FAQ section.

# Expected Result
- The FAQ section contains a `layout` attribute.
- The `layout` value is always `accordion`.
- The generated JSON contains `"layout": "accordion"` for the FAQ section.

# Notes

# Attachments