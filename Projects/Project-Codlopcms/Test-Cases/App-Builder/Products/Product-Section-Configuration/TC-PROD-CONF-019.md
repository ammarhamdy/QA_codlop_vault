---
tc_id: TC-PROD-CONF-019
title: Verify Corner Radius and Padding Reject Negative Values
priority: Low
status: Ready
type: Validation
linked_requirement: PROD-REQ-013
tags:
  - test-case
  - configuration
  - style
  - validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| radius | -5 |
| padding | -10 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to enter negative values for `radius` and `padding`.
2. Attempt to save.

# Expected Result
- Negative values are rejected.
- A validation error is displayed: "Value must be a non-negative number."
- The section is not saved with negative values.

# Notes

# Attachments
