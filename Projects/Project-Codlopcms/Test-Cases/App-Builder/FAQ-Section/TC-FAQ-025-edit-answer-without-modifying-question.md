---
tc_id: TC-FAQ-025
title: Edit the Answer of an Existing FAQ Item Without Modifying the Question
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-013
tags:
  - test-case
  - faq
  - edit
  - answer
  - data-integrity
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Question (unchanged) | What is your return policy? |
| Original answer | Items can be returned within 30 days. |
| Updated answer | Items can be returned within 60 days of delivery. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ item with the specified question and original answer exists.

# Steps
1. Open the FAQ item for editing.
2. Change the answer to "Items can be returned within 60 days of delivery.".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The answer of the existing FAQ item is updated.
- Updating the answer does not modify the corresponding question.
- The generated JSON reflects the updated answer and the unchanged question under `settings.data-object`.

# Notes

# Attachments