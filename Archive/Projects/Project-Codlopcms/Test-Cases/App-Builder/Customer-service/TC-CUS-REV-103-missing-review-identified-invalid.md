---
tc_id: TC-CUS-REV-103
title: Verify a Customer Review Item with a Missing Review Text Is Identified as Invalid
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-038
tags:
  - test-case
  - customer-review
  - validation
  - review
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | 5 |
| Review Item customer_name | Sarah M. |
| Review Item review | (missing) |

# Preconditions
- A Customer Review configuration containing a review item without a `review` attribute is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.

# Expected Result
- A customer review item with a missing `review` is identified as invalid.
- The invalid review item does not cause the Mobile App to crash.

# Notes

# Attachments