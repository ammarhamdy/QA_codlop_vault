---
tc_id: TC-CUS-REV-095
title: Verify the Generated JSON Contains the Required Customer Review Attributes
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
| id | Auto-generated unique value |
| type | customer_review |
| layout | slider-reviews |
| title | Customer Reviews |
| Review Item | rate 5, customer_name "Sarah M.", review "Excellent product, highly recommended!" |

# Preconditions
- Administrator is logged into the App Builder.
- A fully configured Customer Review section (title, styling, settings, and one review item) is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Inspect the top-level attributes of the Customer Review section.
3. Inspect the `style` and `settings` objects.
4. Inspect the `settings.data-object` array.

# Expected Result
- The generated configuration contains the `id` attribute.
- The generated configuration contains the `type` attribute with the value `customer_review`.
- The generated configuration contains the `layout` attribute with the value `slider-reviews`.
- The generated configuration contains the `title` attribute.
- The generated configuration contains the `style` object and the `settings` object.
- The `style` object contains the configured Customer Review styling attributes.
- The `settings` object contains the configured Customer Review settings and data.
- The `settings.data-object` contains the configured review item with `rate`, `customer_name`, and `review` attributes.

# Notes

# Attachments