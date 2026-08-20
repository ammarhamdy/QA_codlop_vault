---
tc_id: TC-CUS-REV-105
title: Verify a Numeric Rating Within the Supported Range Passes Validation
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-039
tags:
  - test-case
  - customer-review
  - validation
  - rate
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | 5 (numeric, within the supported rating range) |
| Review Item customer_name | Sarah M. |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item with a numeric `rate` value within the supported rating range is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.
3. Submit the configuration to the Mobile App and observe rendering.

# Expected Result
- Each customer review item contains a `rate` attribute.
- The `rate` value is numeric and within the supported rating range.
- Valid customer review items remain renderable when their rating value is valid.

# Notes

# Attachments