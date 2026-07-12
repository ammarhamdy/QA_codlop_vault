---
tc_id: TC-PROD-CONF-006
title: Verify Disabled Section Retains All Configuration When Re-Enabled
priority: Low
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-007
tags:
  - test-case
  - configuration
  - disable
  - persistence
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Seasonal Products |
| Layout | grid_two |
| Product Card Style | type_three |
| Background Color | #f0f0f0 |
| showPrice | true |

# Preconditions
- Admin is logged into the Admin Panel.
- A fully configured Product Section exists.

# Steps
1. Note all configuration values (title, layout, style, settings, product selection).
2. Toggle `enabled` to false and save.
3. Reopen the section.
4. Toggle `enabled` back to true and save.

# Expected Result
- After disabling, all configuration values (style, settings, product selection) are preserved.
- After re-enabling, all prior configuration values are restored exactly.
- No re-entry of any field is required.

# Notes

# Attachments
