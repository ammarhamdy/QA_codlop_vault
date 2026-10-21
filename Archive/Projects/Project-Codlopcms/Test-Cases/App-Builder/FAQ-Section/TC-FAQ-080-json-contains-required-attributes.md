---
tc_id: TC-FAQ-080
title: Verify Generated FAQ JSON Contains All Required Top-Level Attributes
priority: High
status:
type: API
linked_requirement: FAQ-REQ-036
tags:
  - test-case
  - faq
  - json
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section | FAQ Section (fully configured) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been fully configured (title, styles, settings, FAQ items) and saved.

# Steps
1. Retrieve the generated FAQ JSON configuration.
2. Inspect the top-level attributes of the JSON.

# Expected Result
- The generated FAQ configuration contains the `id` attribute.
- The generated FAQ configuration contains the `section_key` attribute.
- The generated FAQ configuration contains the `type` attribute with the value `faq`.
- The generated FAQ configuration contains the `layout` attribute with the value `accordion`.
- The generated FAQ configuration contains the `title` attribute.
- The generated FAQ configuration contains the `style` object.
- The generated FAQ configuration contains the `settings` object.

# Notes

# Attachments