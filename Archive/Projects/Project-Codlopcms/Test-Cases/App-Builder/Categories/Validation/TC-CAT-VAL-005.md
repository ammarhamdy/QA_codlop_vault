---
tc_id: TC-CAT-VAL-005
title: "Admin Panel enforces minimum category count before enabling"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-028
tags:
  - test-case
  - admin-panel
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected categories | 0 (empty selection) |
| enabled | true |

# Preconditions
- A Categories section is created but has no categories selected.

# Steps
1. Attempt to set enabled to true.
2. Observe the validation behavior.
3. Add 1 category and try again.

# Expected Result
- Setting enabled = true with zero selected categories is blocked.
- A validation message is shown (e.g., "At least one category must be selected").
- After selecting at least one category, enabling succeeds.

# Notes
Exact minimum threshold to be confirmed (see spec Open Questions).
# Attachments
