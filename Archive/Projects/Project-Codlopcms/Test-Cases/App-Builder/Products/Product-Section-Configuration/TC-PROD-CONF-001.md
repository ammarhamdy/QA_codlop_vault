---
tc_id: TC-PROD-CONF-001
title: Verify Admin Can Configure Section Title with Free Text
priority: Medium
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-004
tags:
  - test-case
  - configuration
  - title
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Featured Products |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section exists and is open for editing.

# Steps
1. Locate the title field in the section configuration.
2. Enter a free-text title: "Featured Products".
3. Save the section.
4. Generate and inspect the JSON output.

# Expected Result
- The title is saved and persisted.
- The JSON output contains the `title` field with value "Featured Products".
- The title is displayed in the section configuration view.

# Notes

# Attachments
