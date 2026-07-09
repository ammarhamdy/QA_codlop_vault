---
tc_id: TC-PROD-REND-010
title: Verify Disabled Section Is Excluded From Rendering With No Placeholder
priority: Medium
status: Ready
type: Functional
linked_requirement: PROD-REQ-006
tags:
  - test-case
  - rendering
  - disabled
  - mobile
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section 1 (above) | Enabled Banner |
| Section 2 (middle) | Disabled Product Section |
| Section 3 (below) | Enabled Featured |

# Preconditions
- Three sections are configured: Section 1 (enabled), Section 2 (a Product Section, disabled), Section 3 (enabled).
- All are published.

# Steps
1. Open the mobile app Home screen.
2. Observe the layout between Section 1 and Section 3.

# Expected Result
- Section 2 (disabled) does not appear.
- No visual gap, empty space, or placeholder remains where Section 2 would have appeared.
- Section 1 and Section 3 render adjacent to each other as if Section 2 did not exist.

# Notes

# Attachments
