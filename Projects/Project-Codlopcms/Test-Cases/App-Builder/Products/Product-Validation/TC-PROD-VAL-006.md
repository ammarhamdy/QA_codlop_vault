---
tc_id: TC-PROD-VAL-006
title: Verify Numeric Fields Reject Non-Numeric Types
priority: Low
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-034
tags:
  - test-case
  - validation
  - data-types
  - numeric
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| radius | "large" |
| padding | true |
| titleGap | "10px" |

# Preconditions
- A Product Section JSON is crafted with non-numeric values for numeric style fields.
- Mobile app is connected to the backend.

# Steps
1. The mobile app receives JSON with incorrect types for numeric fields.
2. The app attempts to parse and validate.

# Expected Result
- Validation detects type mismatch for numeric fields.
- Each invalid field falls back to its documented default value.
- The section continues to render without crashing.

# Notes

# Attachments
