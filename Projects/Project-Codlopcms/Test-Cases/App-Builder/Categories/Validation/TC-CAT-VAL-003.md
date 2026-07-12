---
tc_id: TC-CAT-VAL-003
title: Admin Panel rejects negative and out-of-range numeric values
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-012
tags:
  - test-case
  - admin-panel
  - validation
run_result: pass
---

# Test Data
| Field | Invalid Values |
| ----- | -------------- |
| radius | -1 |
| padding | -10 |
| itemRadius | -5 |
| titleGap | -100 |
| columns | 0, -3, 1000 |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. For each numeric field, attempt to set an invalid value.
2. Attempt to save the section.
3. Observe validation behavior.

# Expected Result
- Negative values are rejected.
- Values exceeding the supported maximum range are rejected.
- columns=0 is rejected (must be positive integer).
- Save is blocked with clear validation messages.

# Notes
# Attachments
