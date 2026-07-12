---
tc_id: TC-CAT-VAL-010
title: "Empty strings rejected in data-strings entries"
priority: Medium
status: Draft
type: Functional
linked_requirement: CAT-REQ-029
tags:
  - test-case
  - admin-panel
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | ["valid_cat", "", "another_cat"] |

# Preconditions
- A Categories section with external source is being configured.

# Steps
1. Attempt to add an empty string as a category identifier via API.
2. Attempt to save.
3. Observe validation behavior.

# Expected Result
- Empty strings in data-strings are rejected.
- Validation requires each entry to be a non-empty string.
- Save is blocked until the empty entry is removed.

# Notes
# Attachments
