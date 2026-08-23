---
tc_id: TC-CUS-REV-102
title: Verify a Customer Review Item with a Missing Customer Name Is Identified as Invalid
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-038
tags:
  - test-case
  - customer-review
  - validation
  - customer_name
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | 5 |
| Review Item customer_name | (missing) |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item without a `customer_name` attribute is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.

# Expected Result
- A customer review item with a missing `customer_name` is identified as invalid.
- The invalid review item does not cause the Mobile App to crash.

# Notes

# Attachments