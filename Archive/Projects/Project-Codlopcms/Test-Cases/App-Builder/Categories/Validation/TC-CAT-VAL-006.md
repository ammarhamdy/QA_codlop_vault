---
tc_id: TC-CAT-VAL-006
title: "Admin Panel prevents duplicate category IDs in data-strings"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-029
tags:
  - test-case
  - admin-panel
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["cat_1", "cat_2", "cat_1"] |

# Preconditions
- A Categories section with an external source is in editing mode.

# Steps
1. Add category "cat_1" to the selection.
2. Attempt to add "cat_1" again (if UI allows). OR send the duplicate array via API.
3. Attempt to save.
4. Observe the validation behavior.

# Expected Result
- Duplicate identifiers are prevented at save time.
- A validation error is shown (e.g., "Duplicate category IDs are not allowed").
- The section is not saved until duplicates are removed.

# Notes
# Attachments
