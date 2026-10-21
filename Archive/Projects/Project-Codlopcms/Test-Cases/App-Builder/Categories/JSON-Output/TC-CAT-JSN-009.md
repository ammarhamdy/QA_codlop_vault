---
tc_id: TC-CAT-JSN-009
title: "JSON contains enabled field with correct boolean"
priority: High
status: Draft
type: API
linked_requirement: CAT-REQ-033, CAT-REQ-036
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | true / false |

# Preconditions
- A Categories section exists.

# Steps
1. Set enabled to true. Save and retrieve JSON. Verify `enabled` is `true`.
2. Set enabled to false. Save and retrieve JSON. Verify `enabled` is `false`.

# Expected Result
- The `enabled` field is always a boolean.
- It accurately reflects the toggle state set in the Admin Panel.

# Notes
# Attachments
