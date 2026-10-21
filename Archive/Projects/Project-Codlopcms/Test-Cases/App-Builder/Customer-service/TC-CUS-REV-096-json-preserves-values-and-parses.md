---
tc_id: TC-CUS-REV-096
title: Verify the Generated JSON Preserves Configured Values and Parses Successfully
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-036
tags:
  - test-case
  - customer-review
  - json
  - configuration
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | Customer Reviews |
| style.background | #f4f6f8 |
| settings.showTitle | true |
| Review Item 1 | rate 5, customer_name "Sarah M.", review "Excellent product, highly recommended!" |
| Review Item 2 | rate 4, customer_name "John D.", review "Very good quality and fast delivery." |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with the configured values above is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Compare the generated values with the administrator's configured values.
3. Provide the generated JSON to the Mobile App for parsing.

# Expected Result
- The generated JSON preserves the administrator's configured values (title, style, settings, and review item data).
- The generated JSON can be parsed successfully by the Mobile App.

# Notes

# Attachments