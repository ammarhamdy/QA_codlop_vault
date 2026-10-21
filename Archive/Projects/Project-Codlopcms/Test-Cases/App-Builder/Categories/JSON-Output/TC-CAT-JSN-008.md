---
tc_id: TC-CAT-JSN-008
title: "Conditional fields are populated correctly based on categoryType"
priority: Medium
status: Draft
type: API
linked_requirement: CAT-REQ-026, CAT-REQ-029
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| categoryType | "third_party" |

# Preconditions
- A Categories section uses an external category source with 3 categories selected.

# Steps
1. Save the section and retrieve JSON.
2. Inspect the `settings` object.

# Expected Result
- `data-object` is absent or empty.
- `data-strings` is an array of 3 non-empty string identifiers.
- The order of identifiers in `data-strings` matches the admin-defined order.

# Notes
# Attachments
