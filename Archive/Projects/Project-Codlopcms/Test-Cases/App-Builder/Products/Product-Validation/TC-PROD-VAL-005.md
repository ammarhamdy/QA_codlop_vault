---
tc_id: TC-PROD-VAL-005
title: Verify String Fields Reject Non-String Types
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-034
tags:
  - test-case
  - validation
  - data-types
  - string
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | 12345 |
| productCardStyle | true |
| title | 999 |

# Preconditions
- A Product Section JSON is crafted with non-string values for string fields.
- Mobile app is connected to the backend.

# Steps
1. The mobile app receives JSON with incorrect types for string fields.
2. The app attempts to parse and validate.

# Expected Result
- Validation detects type mismatch for string fields.
- The section may be skipped or fall back to defaults depending on whether the field is required.
- No crash occurs.

# Notes

# Attachments
