---
tc_id: TC-CAT-CFG-028
title: Internal categories use data-object; external use data-strings
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-026
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
| Scenario 1 | categoryType = internal |
| Scenario 2 | categoryType = third_party |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set categoryType to internal. Select categories. Save.
2. Inspect generated JSON — verify categories are in `data-object`, not `data-strings`.
3. Create a second section. Set categoryType to third_party. Select categories. Save.
4. Inspect generated JSON — verify categories are in `data-strings`, not `data-object`.

# Expected Result
- Internal categories → populate `data-object`.
- External/third-party categories → populate `data-strings`.
- Only one of `data-object` or `data-strings` is populated per section.
- The populated array matches the selected categoryType.

# Notes
# Attachments
