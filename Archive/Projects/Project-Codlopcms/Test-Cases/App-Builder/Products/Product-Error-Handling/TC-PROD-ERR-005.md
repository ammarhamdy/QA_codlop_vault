---
tc_id: TC-PROD-ERR-005
title: Verify Empty Product List Hides Section Entirely
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-043
tags:
  - test-case
  - error-handling
  - empty-list
  - mobile
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Source | selected_products |
| data-strings | [] |

# Preconditions
- A Product Section is configured with an empty `data-strings` array.
- Section is enabled and published.
- Other sections are configured above and below this section.

# Steps
1. Open the mobile app Home screen.
2. Observe the rendering.

# Expected Result
- The Product Section with an empty product list is not rendered.
- No empty/blank placeholder or gap remains.
- Adjacent sections render as if the empty section did not exist.
- No crash occurs.

# Notes

# Attachments
