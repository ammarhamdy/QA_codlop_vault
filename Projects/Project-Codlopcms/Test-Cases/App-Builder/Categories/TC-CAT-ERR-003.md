---
tc_id: TC-CAT-ERR-003
title: Invalid/unresolvable category ID is skipped, valid ones render
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-030, CAT-REQ-032
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["valid_01", "invalid_id", "valid_02"] |

# Preconditions
- A Categories section references three categories where "invalid_id" does not exist in the category source.

# Steps
1. Load the Home screen on the mobile app.
2. Observe the rendered categories.

# Expected Result
- "valid_01" and "valid_02" are rendered normally.
- "invalid_id" is skipped (not rendered).
- The relative order of "valid_01" and "valid_02" is preserved.
- No placeholder or empty slot is shown.
- No error is surfaced to the end user.

# Notes
# Attachments
