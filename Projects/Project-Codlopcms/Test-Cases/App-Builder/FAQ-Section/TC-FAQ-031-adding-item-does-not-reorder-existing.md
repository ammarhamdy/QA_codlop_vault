---
tc_id: TC-FAQ-031
title: Verify Adding an FAQ Item Does Not Reorder Existing Items
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-015
tags:
  - test-case
  - faq
  - order
  - add
  - data-integrity
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Existing FAQ Items | A, B, C (in this order) |
| New FAQ Item | D (appended) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has items A, B, C in this order and is open for editing.

# Steps
1. Note the existing order of FAQ items (A, B, C).
2. Add a new FAQ item D.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the item order.

# Expected Result
- Adding the new FAQ item does not unexpectedly change the order of existing FAQ items.
- The order in the JSON is A, B, C, D with the new item appended.

# Notes

# Attachments