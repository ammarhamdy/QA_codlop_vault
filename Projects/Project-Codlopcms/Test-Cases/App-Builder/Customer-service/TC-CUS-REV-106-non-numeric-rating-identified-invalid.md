---
tc_id: TC-CUS-REV-106
title: Verify a Non-Numeric Rating Is Identified as Invalid
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
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | "excellent" (non-numeric) |
| Review Item customer_name | Sarah M. |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item with a non-numeric `rate` value is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.
3. Submit the configuration to the Mobile App and observe the application's behavior.

# Expected Result
- A non-numeric `rate` value is identified as invalid.
- An invalid rating does not cause the Mobile App to crash.

# Notes

# Attachments