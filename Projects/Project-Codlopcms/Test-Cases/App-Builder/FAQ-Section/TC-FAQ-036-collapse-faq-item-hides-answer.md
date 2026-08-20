---
tc_id: TC-FAQ-036
title: Collapse an Expanded FAQ Item to Hide Its Answer
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-017
tags:
  - test-case
  - faq
  - collapse
  - accordion
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I reset my password? |
| FAQ Item answer | Go to Settings > Security. |

# Preconditions
- An FAQ section with the FAQ item above has been configured and saved.
- The mobile application has been refreshed with the latest configuration.
- The FAQ item is currently expanded.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Interact with (tap) the expanded FAQ item's question to collapse it.

# Expected Result
- The user can collapse an expanded FAQ item.
- When the FAQ item is collapsed, its answer is hidden.

# Notes

# Attachments