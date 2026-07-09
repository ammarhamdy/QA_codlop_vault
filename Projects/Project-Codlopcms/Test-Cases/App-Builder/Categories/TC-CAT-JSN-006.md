---
tc_id: TC-CAT-JSN-006
title: "Optional style fields are omitted when not configured"
priority: Medium
status: Draft
type: API
linked_requirement: CAT-REQ-036, CAT-REQ-009
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| Configured style | Only background set; all others left as default/unset |

# Preconditions
- A Categories section is configured with only a subset of style fields explicitly set.

# Steps
1. Configure only `background` in style. Leave other style fields unset.
2. Save and retrieve JSON.
3. Inspect the `style` object.

# Expected Result
- The `style` object contains only the explicitly configured fields.
- Unconfigured optional fields are either omitted or set to null.
- The `style` object is still a valid object.

# Notes
# Attachments
