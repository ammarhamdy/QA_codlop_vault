---
tc_id: TC-PROD-CARD-003
title: Verify Product Card Style Selection Is Required to Save/Publish
priority: High
status:
  - completed
type: Validation
linked_requirement: PROD-REQ-010, PROD-REQ-032
tags:
  - test-case
  - card-style
  - validation
  - required
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Product Card Style | (not selected) |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Leave the Product Card Style field unselected.
2. Attempt to save or publish the section.

# Expected Result
- Save/publish is blocked (or still active depending on user needs).
- A validation error is displayed: "Product Card Style selection is required." or (just save an empty section).
- The section remains in its previous state.

# Notes

# Attachments
