---
tc_id: TC-CAT-ERR-016
title: data-object and data-strings both populated simultaneously
priority: Medium
status:
  - closed
type: Functional
linked_requirement: CAT-REQ-026, Assumption A-05
tags:
  - test-case
  - mobile
  - error-handling
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-object | ["internal_cat_1"] |
| data-strings | ["external_cat_1"] |

# Preconditions
- The Home screen JSON is manually modified to include both data-object and data-strings populated at the same time.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendering behavior.

# Expected Result
- The mobile app resolves categories from both arrays (or selects one based on internal logic).
- No crash occurs.
- The behavior is consistent with whichever source the app prioritizes.

# Notes
Assumption A-05 states only one should be populated. This test validates the mobile app's resilience if both are present.
# Attachments
