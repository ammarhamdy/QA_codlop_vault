---
tc_id: TC-CAT-JSN-007
title: "settings object contains categoryType and categorySource as required"
priority: High
status: Draft
type: API
linked_requirement: CAT-REQ-036, CAT-REQ-023, CAT-REQ-024
tags:
  - test-case
  - json
  - backend
---

# Test Data
| Field | Value |
| ----- | ----- |
| categoryType | "third_party" |
| categorySource | "external_categories" |

# Preconditions
- A Categories section has been configured with a category source.

# Steps
1. Configure categoryType and categorySource.
2. Save and retrieve JSON.
3. Inspect the `settings` object in the JSON.

# Expected Result
- `settings.categoryType` is present and contains the selected value.
- `settings.categorySource` is present and contains the selected value.
- Both fields are strings.

# Notes
# Attachments
