---
tc_id: TC-FAQ-032
title: Verify Removing an FAQ Item Does Not Reorder Remaining Items
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-015
tags:
  - test-case
  - faq
  - order
  - remove
  - data-integrity
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Existing FAQ Items | A, B, C (in this order) |
| FAQ Item to remove | B |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has items A, B, C in this order and is open for editing.

# Steps
1. Note the existing order of FAQ items (A, B, C).
2. Remove FAQ item B.
3. Save the section.
4. Retrieve the generated JSON configuration and inspect the item order.

# Expected Result
- Removing an FAQ item does not unexpectedly change the order of the remaining FAQ items.
- The order in the JSON is A, C (B removed, A and C keep their relative order).

# Notes

# Attachments