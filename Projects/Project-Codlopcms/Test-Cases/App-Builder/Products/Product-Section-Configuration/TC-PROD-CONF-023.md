---
tc_id: TC-PROD-CONF-023
title: Verify Corner Radius and Padding Enforce Sane Maximum Values
priority: Low
status: Ready
type: Validation
linked_requirement: PROD-REQ-013
tags:
  - test-case
  - configuration
  - style
  - validation
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| radius | 100000 |
| padding | 99999 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Enter excessively large values for `radius` and `padding`.
2. Attempt to save.

# Expected Result
- The Admin Panel enforces a sane maximum value for each field.
- Excessively large values are rejected with a validation error.
- The section is not saved with out-of-range values.

# Notes

# Attachments
