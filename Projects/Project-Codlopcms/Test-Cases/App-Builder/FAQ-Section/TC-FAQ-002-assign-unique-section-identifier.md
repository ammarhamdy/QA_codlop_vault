---
tc_id: TC-FAQ-002
title: Assign a Unique Identifier to an FAQ Section
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-002
tags:
  - test-case
  - faq
  - identifier
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section | FAQ Section (single) |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Create an FAQ section in the App Builder.
2. Retrieve the generated configuration for the FAQ section.
3. Inspect the `id` attribute.
4. Save the section and retrieve the configuration again.

# Expected Result
- The FAQ section contains an `id` attribute with a unique value.
- The `id` value is included in the JSON configuration.
- The `id` value remains the same and associated with the FAQ section after saving.

# Notes

# Attachments