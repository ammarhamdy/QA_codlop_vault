---
tc_id: TC-CAT-CFG-024
title: Minimum category count validation before enabling
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-028
tags:
  - test-case
  - admin-panel
  - configuration
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected categories | 0 (none) |

# Preconditions
- A Categories section is in editing mode with no categories selected.

# Steps
1. Attempt to set enabled to true.
2. Observe the validation behavior.
3. Add at least one category to the selection.
4. Attempt to enable the section again.

# Expected Result
- Admin cannot enable a section with zero selected categories.
- A validation message is displayed indicating the minimum requirement.
- Once at least one category is selected, enabling the section succeeds.

# Notes
Exact minimum threshold to be confirmed (see spec Open Questions item #2).
# Attachments
