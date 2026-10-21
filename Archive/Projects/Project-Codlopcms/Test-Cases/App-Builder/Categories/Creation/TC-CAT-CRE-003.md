---
tc_id: TC-CAT-CRE-003
title: Verify section ID is immutable after creation
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
| Section ID | Auto-generated |

# Preconditions
- A Categories section has been created with a known `id`.

# Steps
1. Open the edit view for the Categories section.
2. Attempt to modify the `id` field via the UI.
3. Attempt to modify the `id` field via API (if applicable).
4. Save the section.

# Expected Result
- The `id` field is not exposed for manual editing in the UI.
- Any attempt to modify the `id` via API is rejected.
- After save, the `id` remains unchanged from its original value.

# Notes
# Attachments
