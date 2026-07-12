---
tc_id: TC-CAT-RND-007
title: "Order preservation on partial category resolution failure"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-032
tags:
  - test-case
  - mobile
  - rendering
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["cat_good_1", "cat_fail", "cat_good_2"] |

# Preconditions
- A Categories section references three categories. "cat_fail" is configured with an invalid/unresolvable ID.

# Steps
1. Load the Home screen on the mobile app.
2. Observe which categories are rendered and in what order.
3. Verify no crash or error is shown to the user.

# Expected Result
- "cat_fail" is silently skipped (not rendered).
- "cat_good_1" and "cat_good_2" render normally.
- "cat_good_2" appears after "cat_good_1" (relative order preserved).
- No placeholder or empty slot remains for "cat_fail".
- No error is surfaced to the end user.

# Notes
# Attachments
