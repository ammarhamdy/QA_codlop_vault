---
tc_id: TC-CUS-REV-093
title: Configure String Values in the settings.data-strings Array
priority: Low
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-035
tags:
  - test-case
  - customer-review
  - data-strings
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-strings | ["Excellent product", "Highly recommended", "Great support"] |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the `settings.data-strings` option in the Customer Review section configuration.
2. Configure the string values "Excellent product", "Highly recommended", and "Great support".
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `settings.data-strings` attribute.

# Expected Result
- The Customer Review section contains a `settings.data-strings` attribute.
- The `data-strings` attribute is represented as an array.
- The generated JSON preserves the configured `data-strings` values.

# Notes

# Attachments