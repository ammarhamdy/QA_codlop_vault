---
tc_id: TC-PROD-CRE-007
title: Verify Section ID Remains Consistent Across Save Cycles
priority: Medium
status:
  - completed
type: Regression
linked_requirement: PROD-REQ-002
tags:
  - test-case
  - identifier
  - persistence
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section ID | Auto-generated on creation |

# Preconditions
- A Product Section has been created with a known `id`.

# Steps
1. Note the section's `id`.
2. Edit the section title and save.
3. Reopen the section.
4. Compare the `id` with the original value.

# Expected Result
- The `id` remains unchanged after the save cycle.
- The `id` is persistent across all edit/save operations.

# Notes

# Attachments
