---
tc_id: TC-CAT-CRE-002
title: Verify section ID is unique across all Home screen sections
priority: High
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-002
tags:
  - test-case
  - admin-panel
  - creation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Existing sections | One Categories section and one other section type (e.g., Banner) |

# Preconditions
- Home screen configuration already contains at least one section of a different type with a known `id`.
- One Categories section has already been created.

# Steps
1. Create a second Categories section.
2. Inspect the generated `id` of the second Categories section.
3. Compare with the `id` of the first Categories section and the other existing section.

# Expected Result
- The `id` of the second Categories section is different from all existing section IDs.
- All section IDs in the Home screen configuration are unique.

# Notes
# Attachments
