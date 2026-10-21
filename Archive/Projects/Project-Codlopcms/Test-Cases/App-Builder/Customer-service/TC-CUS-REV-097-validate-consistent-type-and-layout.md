---
tc_id: TC-CUS-REV-097
title: Verify a Valid Customer Review Configuration Has Consistent Type and Layout
priority: High
status: Draft
type: API
linked_requirement: CUS-REV-REQ-037
tags:
  - test-case
  - customer-review
  - validation
  - type
  - layout
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| type | customer_review |
| layout | slider-reviews |

# Preconditions
- A valid Customer Review section configuration with the values above is available.

# Steps
1. Submit the Customer Review configuration to the validation process.
2. Verify the `type` value.
3. Verify the `layout` value.
4. Verify the consistency between `type` and `layout`.

# Expected Result
- The Customer Review section `type` is `customer_review`.
- The Customer Review section `layout` is `slider-reviews`.
- A valid Customer Review configuration contains consistent `type` and `layout` values.
- The valid configuration passes validation.

# Notes

# Attachments