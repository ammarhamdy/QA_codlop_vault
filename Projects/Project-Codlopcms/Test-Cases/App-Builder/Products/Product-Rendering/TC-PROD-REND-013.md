---
tc_id: TC-PROD-REND-013
title: Verify Mobile App Skips Rendering Section with Zero Resolved Products
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-043
tags:
  - test-case
  - rendering
  - empty-list
  - mobile
run_result: pass
---

# Test Data
| Field          | Value             |
| -------------- | ----------------- |
| Product Source | selected_products |
| data-strings   | `[]`              |

# Preconditions
- A Product Section is configured with an empty product list (`data-strings: []`).
- Section is enabled and published.

# Steps
1. Open the mobile app Home screen.
2. Observe whether the section renders.

# Expected Result
- The section is not rendered on the Home screen.
- No empty/blank placeholder is shown to the end user.
- No crash occurs.
- Other sections render normally.

# Notes

# Attachments
