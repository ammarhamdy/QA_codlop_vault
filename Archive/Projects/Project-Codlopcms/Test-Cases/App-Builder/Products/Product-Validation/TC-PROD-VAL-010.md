---
tc_id: TC-PROD-VAL-010
title: Verify Mobile App Data Type Validation Catches Invalid Boolean Toggles
priority: Medium
status:
  - closed
type: Validation
linked_requirement: PROD-REQ-034, PROD-REQ-042
tags:
  - test-case
  - validation
  - mobile
  - data-types
---

# Test Data
| Field     | Value            |
| --------- | ---------------- |
| enabled   | "false" (string) |
| showTitle | null             |

# Preconditions
- A Product Section JSON is crafted with non-boolean values for boolean toggles.
- Mobile app is connected to the backend.

# Steps
1. The mobile app receives the invalid JSON payload.
2. The app attempts to parse and validate.

# Expected Result
- The mobile app's validation detects the type mismatch.
- Each invalid boolean field falls back to its documented default.
- The section renders (if other required fields are valid) with fallback defaults applied.
- No app crash.

# Notes

# Attachments
