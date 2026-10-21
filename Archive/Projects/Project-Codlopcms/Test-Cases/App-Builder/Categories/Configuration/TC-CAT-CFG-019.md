---
tc_id: TC-CAT-CFG-019
title: Select category type and category source
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-023, CAT-REQ-024
tags:
  - test-case
  - admin-panel
  - configuration
  - source
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| categoryType | "third_party" (external) |
| categorySource | "external_categories" |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Select categoryType "third_party" from the closed list.
2. Observe the category selection UI changes accordingly.
3. Select categorySource "external_categories" from the closed list.
4. Save the section.
5. Inspect generated JSON.

# Expected Result
- Both categoryType and categorySource are selected from closed lists, not free-text.
- Changing categoryType affects which category-selection UI/data model is presented.
- Generated JSON contains `"categoryType": "third_party"` and `"categorySource": "external_categories"`.

# Notes
# Attachments
