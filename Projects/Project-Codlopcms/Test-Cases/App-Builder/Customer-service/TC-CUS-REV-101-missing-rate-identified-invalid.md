---
tc_id: TC-CUS-REV-101
title: Verify a Customer Review Item with a Missing Rate Is Identified as Invalid
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-038, CUS-REV-REQ-039
tags:
  - test-case
  - customer-review
  - validation
  - rate
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | (missing) |
| Review Item customer_name | Sarah M. |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item without a `rate` attribute is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.

# Expected Result
- A customer review item with a missing `rate` is identified as invalid.
- A missing `rate` value is identified as invalid.
- The invalid review item does not cause the Mobile App to crash.

# Notes

# Attachments