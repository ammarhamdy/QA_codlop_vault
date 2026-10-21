---
tc_id: TC-PROD-CONF-004
title: Verify Empty Title with showTitle True Is Rejected
priority: Medium
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-004
tags:
  - test-case
  - configuration
  - title
  - validation
  - negative
run_result: fail
---

# Test Data
| Field         | Value   |
| ------------- | ------- |
| Section Title | (empty) |
| showTitle     | true    |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section exists and is open for editing.

# Steps
1. Clear the section title field (empty string).
2. Set `showTitle` to true.
3. Attempt to save or publish the section.

# Expected Result
- Save/publish is blocked.
- A validation error is displayed: "Title is required when showTitle is enabled."
- The section remains in its previous state.

# Notes

# Attachments
