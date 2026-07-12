---
tc_id: TC-CAT-VAL-009
title: "data-object array entries reference valid internal categories"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-030
tags:
  - test-case
  - admin-panel
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| categoryType | internal |
| data-object | [valid_id_1, invalid_id, valid_id_2] |

# Preconditions
- A Categories section is configured with an internal category source.

# Steps
1. Configure section to include both valid and invalid internal category references.
2. Save the section.
3. On the mobile app, load the Home screen.

# Expected Result
- Valid IDs are resolved and rendered.
- Invalid IDs are skipped gracefully (no crash).
- The mobile app handles unresolvable references per the error handling section.

# Notes
# Attachments
