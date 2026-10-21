---
tc_id: TC-CAT-VAL-002
title: Admin Panel rejects non-boolean values for boolean fields
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-011, CAT-REQ-016, CAT-REQ-017, CAT-REQ-019, CAT-REQ-020
tags:
  - test-case
  - admin-panel
  - validation
run_result: pass
---

# Test Data
| Field | Invalid Value |
| ----- | ------------- |
| enabled | "yes" |
| showTitle | 1 |
| showCta | "true" (string) |
| showPrice | null |
| transparentBackground | "on" |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. For each boolean field, attempt to set an invalid (non-boolean) value via API.
2. Attempt to save the section.
3. Observe validation behavior.

# Expected Result
- Non-boolean values are rejected.
- Save is blocked with a validation error.
- Boolean fields only accept true/false.

# Notes
Operator may use API directly to bypass UI constraints.
# Attachments
