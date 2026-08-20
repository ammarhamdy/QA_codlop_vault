---
tc_id: TC-CUS-REV-100
title: Verify a Valid Customer Review Item with Rate, Customer Name, and Review Text Passes Validation
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-038
tags:
  - test-case
  - customer-review
  - validation
  - data-object
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | 5 |
| Review Item customer_name | Sarah M. |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item with the values above is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.

# Expected Result
- The review item contains a `rate` attribute with valid rating data.
- The review item contains a `customer_name` attribute with valid customer name content.
- The review item contains a `review` attribute with valid review content.
- The valid review item passes validation.

# Notes

# Attachments