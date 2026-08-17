---
tc_id: TC-FAQ-004
title: Verify Section Type Is Fixed to "faq" in the JSON Configuration
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-003
tags:
  - test-case
  - faq
  - type
  - json
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expected `type` value | faq |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created.

# Steps
1. Create an FAQ section in the App Builder.
2. Retrieve the generated JSON configuration.
3. Inspect the `type` attribute of the FAQ section.

# Expected Result
- The FAQ section contains a `type` attribute.
- The `type` value is always `faq`.
- The generated JSON contains `"type": "faq"` for the FAQ section.

# Notes

# Attachments