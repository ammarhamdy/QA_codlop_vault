---
tc_id: TC-CAT-VAL-004
title: "Admin Panel validates categoryType and categorySource consistency"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-025
tags:
  - test-case
  - admin-panel
  - validation
---

# Test Data
| Field | Valid Combination | Invalid Combination |
| ----- | ----------------- | ------------------- |
| categoryType | "third_party" | "third_party" |
| categorySource | "external_categories" | "internal_categories" |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Select categoryType "third_party".
2. Select categorySource "internal_categories" (or another known incompatible source).
3. Attempt to save.
4. Observe the validation error.

# Expected Result
- Save is blocked with a clear error message explaining the incompatibility.
- The combination is prevented from being persisted.

# Notes
# Attachments
