---
tc_id: TC-CAT-CFG-022
title: Select specific categories to display in the section
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-027
tags:
  - test-case
  - admin-panel
  - configuration
  - selection
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| categorySource | external_categories |

# Preconditions
- A Categories section is in editing mode with a valid categorySource selected.

# Steps
1. Browse the available categories from the configured source.
2. Search for a specific category by name.
3. Select 3 categories to include in the section.
4. Remove one category from the selection.
5. Save the section.
6. Inspect the generated JSON.

# Expected Result
- Admin can browse/search available categories from the selected source.
- Admin can add and remove categories from the selection list.
- Selected category identifiers are persisted in `data-strings` (for external) or `data-object` (for internal).
- The generated JSON contains the correct identifiers in the appropriate array.

# Notes
# Attachments
