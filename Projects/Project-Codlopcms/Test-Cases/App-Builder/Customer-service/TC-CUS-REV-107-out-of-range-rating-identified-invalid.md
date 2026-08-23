---
tc_id: TC-CUS-REV-107
title: Verify a Rating Outside the Supported Range Is Identified as Invalid
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-039
tags:
  - test-case
  - customer-review
  - validation
  - rate
  - boundary
  - api
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | value outside the supported rating range (e.g., 0 or 6 on a 1–5 scale) |
| Review Item customer_name | Sarah M. |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- A Customer Review configuration containing a review item with a `rate` value outside the supported rating range is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the validation result for the review item.
3. Submit the configuration to the Mobile App and observe the application's behavior.

# Expected Result
- A rating value outside the supported range is identified as invalid.
- An invalid rating does not cause the Mobile App to crash.

# Notes

# Attachments