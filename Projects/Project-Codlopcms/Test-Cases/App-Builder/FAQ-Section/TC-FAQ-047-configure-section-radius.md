---
tc_id: TC-FAQ-047
title: Configure the FAQ Section Corner Radius
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-021
tags:
  - test-case
  - faq
  - style
  - radius
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Locate the FAQ section radius option.
2. Set the radius value to 12.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The FAQ section contains a `style.radius` attribute.
- The configured radius value is stored in the FAQ section configuration.
- The generated JSON contains `style.radius: 12`.

# Notes

# Attachments