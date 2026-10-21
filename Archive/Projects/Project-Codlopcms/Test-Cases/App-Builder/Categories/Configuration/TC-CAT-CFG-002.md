---
tc_id: TC-CAT-CFG-002
title: Empty title only permitted when showTitle is false
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-004, CAT-REQ-016
tags:
  - test-case
  - admin-panel
  - configuration
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | (empty) |
| showTitle | false |

# Preconditions
- A Categories section exists in editing mode.

# Steps
1. Clear the title field and set showTitle to true.
2. Attempt to save the section.
3. Set showTitle to false and clear the title field.
4. Attempt to save the section.
5. Inspect the generated JSON.

# Expected Result
- Step 2: Save is blocked with a validation error (title required when showTitle is true).
- Step 4: Save succeeds.
- Generated JSON omits the `title` field or includes an empty string.

# Notes
# Attachments
