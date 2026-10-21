---
tc_id: TC-CAT-CFG-025
title: Duplicate category identifiers prevented at save time
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-029
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
| data-strings | ["cat_1", "cat_2", "cat_1"] (duplicate) |

# Preconditions
- A Categories section with external category source is being configured.

# Steps
1. Use API or UI to create a selection with a duplicate category ID (if UI allows adding the same category twice).
2. Attempt to save the section.
3. Observe validation behavior.

# Expected Result
- Duplicate identifiers in `data-strings` are prevented at save time.
- A validation error is shown indicating duplicate entries are not allowed.
- The section is not saved until duplicates are removed.

# Notes
# Attachments
