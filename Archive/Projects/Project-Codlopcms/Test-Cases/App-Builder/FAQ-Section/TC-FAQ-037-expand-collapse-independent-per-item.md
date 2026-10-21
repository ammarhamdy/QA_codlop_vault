---
tc_id: TC-FAQ-037
title: Verify Expand and Collapse Are Independent per FAQ Item
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-017
tags:
  - test-case
  - faq
  - expand
  - collapse
  - independence
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 | Q: Question A / A: Answer A |
| FAQ Item 2 | Q: Question B / A: Answer B |

# Preconditions
- An FAQ section with two FAQ items has been configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application and navigate to the home screen.
2. Expand Item 1, then expand Item 2.
3. Verify the display state of both items.
4. Collapse Item 1 only.
5. Verify the display state of both items.

# Expected Result
- Expanding or collapsing one FAQ item does not modify its configured question or answer.
- The expand/collapse behavior applies independently to each FAQ item (expanding Item 2 does not force Item 1 to collapse, and vice versa).

# Notes

# Attachments