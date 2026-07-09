---
tc_id: TC-CAT-VAL-008
title: Admin Panel rejects unsupported shadow values
priority: Low
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-013
tags:
  - test-case
  - admin-panel
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| shadow | "drop_shadow_custom" (unsupported) |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Attempt to set shadow to an unsupported/non-closed-list value via API.
2. Attempt to save.
3. Observe validation behavior.

# Expected Result
- Unsupported shadow values are rejected.
- Save is blocked with a validation error.
- Only values from the closed list are accepted.

# Notes
# Attachments
