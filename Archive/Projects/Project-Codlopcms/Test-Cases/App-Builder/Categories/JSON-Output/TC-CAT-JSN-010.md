---
tc_id: TC-CAT-JSN-010
title: "Layout and section_key remain consistent in generated JSON"
priority: Medium
status: Draft
type: API
linked_requirement: CAT-REQ-006, CAT-REQ-036
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected layout | type-two |

# Preconditions
- A Categories section is configured with a specific layout.

# Steps
1. Select layout "type-two". Save and retrieve JSON.
2. Verify `layout` is "type-two".
3. Verify `section_key` is the corresponding variant key for "type-two" (e.g., "type_two").
4. Repeat for all supported layout options.

# Expected Result
- `layout` and `section_key` are always consistent with each other.
- The pair is determined by the layout selection in the Admin Panel.

# Notes
# Attachments
