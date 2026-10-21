---
tc_id: TC-PROD-CONF-020
title: Verify Spacing Fields Reject Negative Values
priority: Low
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-018
tags:
  - test-case
  - configuration
  - spacing
  - validation
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| titleGap | -2 |
| gapTop | -5 |
| gapBottom | -10 |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to enter negative values for `titleGap`, `gapTop`, and `gapBottom`.
2. Attempt to save.

# Expected Result
- Negative values are rejected.
- A validation error is displayed for each field.
- The section is not saved with negative spacing values.

# Notes

# Attachments
