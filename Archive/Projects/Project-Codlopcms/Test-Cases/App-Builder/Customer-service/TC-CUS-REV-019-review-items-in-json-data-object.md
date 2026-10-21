---
tc_id: TC-CUS-REV-019
title: Verify Configured Review Items Are Included in the JSON Under settings.data-object
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-009
tags:
  - test-case
  - customer-review
  - items
  - data-object
  - json
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 rate | 5 |
| Review Item 1 customer_name | Sarah M. |
| Review Item 1 review | Excellent product, highly recommended! |
| Review Item 2 rate | 4 |
| Review Item 2 customer_name | John D. |
| Review Item 2 review | Very good quality and fast delivery. |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with two review items (as listed above) is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Inspect the `settings.data-object` array.
3. Verify the two configured review items are present.

# Expected Result
- The Customer Review section contains a `settings.data-object` collection for its review items.
- The configured review items are included in the generated JSON under `settings.data-object`.
- Each review item contains its configured `rate`, `customer_name`, and `review` values.

# Notes

# Attachments