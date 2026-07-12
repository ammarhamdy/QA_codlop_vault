---
tc_id: TC-PROD-CONF-003
title: Verify Empty Title Is Only Permitted When showTitle Is False
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-004, PROD-REQ-019
tags:
  - test-case
  - configuration
  - title
  - validation
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | (empty) |
| showTitle | false |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section exists and is open for editing.

# Steps
1. Clear the section title field (empty string).
2. Set `showTitle` to false.
3. Attempt to save the section.

# Expected Result
- The section saves successfully when `showTitle` is false.
- The JSON contains `title: ""` and `showTitle: false`.

# Notes
- Also test that saving an empty title with `showTitle: true` is blocked with a validation error.

# Attachments
