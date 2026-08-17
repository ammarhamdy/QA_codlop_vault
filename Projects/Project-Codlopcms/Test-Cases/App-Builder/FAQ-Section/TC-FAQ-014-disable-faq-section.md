---
tc_id: TC-FAQ-014
title: Disable the FAQ Section
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-008
tags:
  - test-case
  - faq
  - enabled
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | false |

# Preconditions
- Administrator is logged into the App Builder.
- An enabled FAQ section has been created and is open for editing.

# Steps
1. Set the FAQ section `enabled` attribute to `false`.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Open the mobile application and navigate to the home screen.

# Expected Result
- The FAQ section is disabled.
- The generated JSON reflects `enabled: false`.
- The FAQ section is not rendered in the Mobile App.

# Notes

# Attachments