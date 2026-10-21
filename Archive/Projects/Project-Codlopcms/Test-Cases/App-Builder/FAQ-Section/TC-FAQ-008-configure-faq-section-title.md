---
tc_id: TC-FAQ-008
title: Configure the FAQ Section Title
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-006
tags:
  - test-case
  - faq
  - title
  - configuration
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Frequently Asked Questions |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the `title` field of the FAQ section.
2. Enter "Frequently Asked Questions" as the section title.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `title` attribute.
- The configured title is stored in the FAQ section configuration.
- The generated JSON contains the configured title in the `title` attribute.

# Notes

# Attachments