---
tc_id: TC-FAQ-013
title: Enable the FAQ Section
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-008
tags:
  - test-case
  - faq
  - enabled
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | true |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Set the FAQ section `enabled` attribute to `true`.
2. Save the section.
3. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section is enabled.
- The generated JSON reflects `enabled: true`.
- The FAQ section is eligible for rendering in the Mobile App.

# Notes

# Attachments