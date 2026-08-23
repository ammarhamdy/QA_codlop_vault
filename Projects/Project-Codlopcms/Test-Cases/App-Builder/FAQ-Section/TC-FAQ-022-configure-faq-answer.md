---
tc_id: TC-FAQ-022
title: Configure the Answer of an FAQ Item
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-012
tags:
  - test-case
  - faq
  - answer
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | What is your return policy? |
| FAQ Item answer | Items can be returned within 30 days of delivery. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Add an FAQ item within the FAQ section.
2. Enter the answer "Items can be returned within 30 days of delivery." for the FAQ item.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- Each FAQ item contains an `answer` attribute.
- The configured answer is stored within the corresponding FAQ item.
- The generated JSON contains the configured answer under `settings.data-object`.

# Notes

# Attachments