---
tc_id: TC-PROD-VAL-004
title: Verify Boolean Fields Reject Non-Boolean Values
priority: Medium
status: Ready
type: Validation
linked_requirement: PROD-REQ-034
tags:
  - test-case
  - validation
  - data-types
  - boolean
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | "yes" |
| showTitle | 1 |
| transparentBackground | "true" |

# Preconditions
- A Product Section JSON is crafted with non-boolean values for boolean fields.
- Mobile app is connected to the backend.

# Steps
1. The mobile app receives JSON with `enabled: "yes"`, `showTitle: 1`, `transparentBackground: "true"`.
2. The app attempts to parse and validate.

# Expected Result
- Validation detects type mismatch for boolean fields.
- The affected field falls back to its default value.
- The section continues to render (does not crash).

# Notes
- The mobile app should use strict type checking for boolean fields.

# Attachments
