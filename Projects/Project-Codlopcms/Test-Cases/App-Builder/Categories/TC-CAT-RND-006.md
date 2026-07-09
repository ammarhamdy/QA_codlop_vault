---
tc_id: TC-CAT-RND-006
title: Mobile app renders categories in the configured order
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-044, CAT-REQ-031
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["cat_Z", "cat_A", "cat_M"] |

# Preconditions
- A Categories section has categories ordered as Cat_Z, Cat_A, Cat_M in the Admin Panel.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the order of the displayed categories.

# Expected Result
- Categories are rendered as: Cat_Z, then Cat_A, then Cat_M.
- The order matches the array order exactly.
- Categories are NOT re-sorted client-side (e.g., alphabetically).

# Notes
# Attachments
