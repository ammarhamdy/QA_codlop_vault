---
tc_id: TC-CAT-CFG-020
title: categoryType and categorySource consistency validation
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-025
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
| categoryType | "third_party" |
| categorySource | "internal_categories" (inconsistent combination) |

# Preconditions
- A Categories section is in editing mode.

# Steps
1. Set categoryType to "third_party".
2. Set categorySource to a value that is incompatible with "third_party" (e.g., "internal_categories").
3. Attempt to save the section.
4. Observe the validation behavior.
5. Correct the combination to a valid one and save.

# Expected Result
- The Admin Panel prevents saving an invalid/unsupported categoryType + categorySource combination.
- A clear validation message is displayed explaining the incompatibility.
- After correcting to a valid combination, save succeeds.

# Notes
# Attachments
