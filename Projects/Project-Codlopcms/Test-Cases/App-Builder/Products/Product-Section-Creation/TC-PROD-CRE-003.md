---
tc_id: TC-PROD-CRE-003
title: Verify Section ID Is Immutable After Creation
priority: High
status: Ready
type: Functional
linked_requirement: PROD-REQ-002
tags:
  - test-case
  - creation
  - identifier
  - immutability
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section ID | Auto-generated on creation |

# Preconditions
- A Product Section has been created with a known `id`.

# Steps
1. Open the existing Product Section for editing.
2. Attempt to modify the `id` field directly (via UI, API, or any available interface).

# Expected Result
- The `id` field is not editable.
- No UI control exists to change the `id`.
- Any API attempt to modify the `id` is rejected.

# Notes

# Attachments
